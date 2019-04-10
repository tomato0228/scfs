import 'package:flutter/material.dart';
import 'package:flutter_sfcs/demo/bloc/bloc_demo.dart';
import 'package:flutter_sfcs/demo/button_demo.dart';
import 'package:flutter_sfcs/demo/floating_action_button_demo.dart';
import 'package:flutter_sfcs/demo/popup_menu_button_demo.dart';
import 'package:flutter_sfcs/demo/form_demo.dart';
import 'package:flutter_sfcs/demo/checkbox_demo.dart';
import 'package:flutter_sfcs/demo/radio_demo.dart';
import 'package:flutter_sfcs/demo/rxdart/rxdart_demo.dart';
import 'package:flutter_sfcs/demo/state/state_management_demo.dart';
import 'package:flutter_sfcs/demo/stream/stream_demo.dart';
import 'package:flutter_sfcs/demo/switch_demo.dart';
import 'package:flutter_sfcs/demo/slider_demo.dart';
import 'package:flutter_sfcs/demo/datetime_demo.dart';
import 'package:flutter_sfcs/demo/simple_dialog_demo.dart';
import 'package:flutter_sfcs/demo/alert_dialog_demo.dart';
import 'package:flutter_sfcs/demo/bottom_sheet_demo.dart';
import 'package:flutter_sfcs/demo/snack_bar_demo.dart';
import 'package:flutter_sfcs/demo/expansion_panel_demo.dart';
import 'package:flutter_sfcs/demo/chip_demo.dart';
import 'package:flutter_sfcs/demo/data_table_demo.dart';
import 'package:flutter_sfcs/demo/paginated_data_table_demo.dart';
import 'package:flutter_sfcs/demo/card_demo.dart';
import 'package:flutter_sfcs/demo/stepper_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'Bloc',
            page: BlocDemo(),
          ),
          ListItem(
            title: 'RxDart',
            page: RxDartDemo(),
          ),
          ListItem(
            title: 'Stream',
            page: StreamDemo(),
          ),
          ListItem(
            title: 'StateManagement',
            page: StateManagementDemo(),
          ),
          ListItem(
            title: 'Stepper',
            page: StepperDemo(),
          ),
          ListItem(
            title: 'Card',
            page: CardDemo(),
          ),
          ListItem(
            title: 'PaginatedDataTable',
            page: PaginatedDataTableDemo(),
          ),
          ListItem(
            title: 'DataTable',
            page: DataTableDemo(),
          ),
          ListItem(
            title: 'Chip',
            page: ChipDemo(),
          ),
          ListItem(
            title: 'ExpansionPanel',
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: 'SnackBar',
            page: SnackBarDemo(),
          ),
          ListItem(
            title: 'BottomSheet',
            page: BottomSheetDemo(),
          ),
          ListItem(
            title: 'AlertDialog',
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: 'SimpleDialog',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: 'Datetime',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: 'Slider',
            page: SliderDemo(),
          ),
          ListItem(
            title: 'Switch',
            page: SwitchDemo(),
          ),
          ListItem(
            title: 'Radio',
            page: RadioDemo(),
          ),
          ListItem(
            title: 'CheckBox',
            page: CheckboxDemo(),
          ),
          ListItem(
            title: 'Form',
            page: FormDemo(),
          ),
          ListItem(
            title: 'PopupMenuButton',
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
