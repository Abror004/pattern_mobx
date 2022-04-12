part of home_screen;

class FormWidget extends StatelessWidget {
  FormWidget({Key? key}) : super(key: key);

  final HomeViewModel _homeViewModel = locator<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Form(
        key: _homeViewModel.formKey,
        child: Column(
          children: [
            CustomTextFormField(
              hintText: "User Name",
              controller: _homeViewModel.nameController,
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              hintText: "User E-mail",
              controller: _homeViewModel.emailController,
            ),
          ],
        ),
      );
    });
  }
}