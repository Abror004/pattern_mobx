part of home_screen;

class SubmitButtonWidget extends StatelessWidget {
  SubmitButtonWidget({Key? key}) : super(key: key);

  final HomeViewModel _homeViewModel = locator<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _homeViewModel.submitButtonOnPressed,
      child: const Text("Submit"),
    );
  }
}