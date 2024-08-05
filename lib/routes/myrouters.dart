// ignore_for_file: prefer_const_constructors, unused_import

import 'package:easypay/components/useremitabbar.dart';
import 'package:easypay/main.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Banking/deposit.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Banking/transactions.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Banking/withdrawl.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/GeoTracker/visithistory.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/HomeManagement/AddProduct/addproductpage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/HomeManagement/Banner/bannerpage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/HomeManagement/Banner/datatable.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/HomeManagement/Categories/categorypage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/HomeManagement/Electronics/electronicspage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/HomeManagement/Furnitures/furniturepage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/LoanPlans/emicollectedtilldate.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/LoanPlans/emiplansofcustomer.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/LoanPlans/loancalculator.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Master/Branches/branchespage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Master/EmployeeRoles/employeerolespage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Master/MailSmsService/mailsmsservice.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Master/Roles/rolespage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/Master/Series/seriespage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/UserManagement/Employee/employeepage.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/UserManagement/Member/memberpage.dart';
import 'package:easypay/view/common/Auth/Fogetpassword/pages/forgetpassword.dart';
import 'package:easypay/view/common/Auth/Fogetpassword/pages/newpwset.dart';
import 'package:easypay/view/common/Auth/Fogetpassword/pages/otp.dart';
import 'package:easypay/view/common/Auth/Login/pages/loginn.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/DashboardPage/dashboard.dart';
import 'package:easypay/view/AdminProfile/Homepapge/dashhomepage.dart';
import 'package:easypay/view/common/LandingPage/pages/landingpage.dart';
import 'package:easypay/view/MemberProfile/AccountInfomation/Pages/accountinformation.dart';
import 'package:easypay/view/common/LandingPage/pages/bottomnavbar.dart';
import 'package:easypay/components/imagepicker.dart';
import 'package:easypay/view/MemberProfile/EmiPlans/emiplans.dart';
import 'package:easypay/view/MemberProfile/Profile/Pages/profilepage.dart';
import 'package:easypay/view/MemberProfile/Profile/Pages/userprofile.dart';

import 'package:easypay/view/common/Onboarding/onboardingpage.dart';
import 'package:easypay/view/common/Splashscreen/pages/splashscreen.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static Route<dynamic>? generatedRoutes(RouteSettings settings) {
    // implement business logic here
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case '/landingpage':
        return MaterialPageRoute(builder: (context) => Landingpage());
      case '/dashboard':
        return MaterialPageRoute(builder: (context) => Dashboard());
      case '/forgotpassword':
        return MaterialPageRoute(builder: (context) => ForgotPassword());

      case '/otp':
        return MaterialPageRoute(builder: (context) => OtpInputPage());

      case '/setnewpasswordpage':
        return MaterialPageRoute(builder: (context) => SetNewPasswordPage());
      case '/dashhomepage':
        return MaterialPageRoute(builder: (context) => DashHomePage());
      case '/memberprofilepage':
        return MaterialPageRoute(builder: (context) => MemberProfilePage());
      // case '/memberemiplans':
      //   return MaterialPageRoute(builder: (context) => MemberEmiPlans());
      case '/userprofile':
        return MaterialPageRoute(builder: (context) => UserProfile());
      case '/bottomnavbar':
        return MaterialPageRoute(builder: (context) => Bottomnavbar());
      case '/accountinformationpage':
        return MaterialPageRoute(
            builder: (context) => AccountInformationPage());
      case '/imagepickertemplate':
        return MaterialPageRoute(builder: (context) => ImagePickerTemplate());
      case '/emiplanspage':
        return MaterialPageRoute(builder: (context) => EmiPlansPage());
      case '/tabbar':
        return MaterialPageRoute(builder: (context) => TabBarExample());
      case '/bannerpage':
        return MaterialPageRoute(builder: (context) => BannerPage());
      case '/responsivedatatable':
        return MaterialPageRoute(builder: (context) => DataTableExample());
      case '/addproductpage':
        return MaterialPageRoute(builder: (context) => AddProductPage());

      case '/categorypage':
        return MaterialPageRoute(builder: (context) => CategoryPage());

      case '/electronicspage':
        return MaterialPageRoute(builder: (context) => ElectronicsPage());
      case '/furniturespage':
        return MaterialPageRoute(builder: (context) => FurniturePage());
      case '/employeepage':
        return MaterialPageRoute(builder: (context) => EmployeePage());
      case '/memberpage':
        return MaterialPageRoute(builder: (context) => MemberPage());
      case '/rolespage':
        return MaterialPageRoute(builder: (context) => RolesPage());
      case '/employeerolespage':
        return MaterialPageRoute(builder: (context) => EmployeeRolesPage());

      case '/branchespage':
        return MaterialPageRoute(builder: (context) => BranchesPage());
      case '/seriespage':
        return MaterialPageRoute(builder: (context) => SeriesPage());
      case '/mailsmsservicepage':
        return MaterialPageRoute(builder: (context) => MailsmsservicePage());

      case '/onboarding':
        return MaterialPageRoute(builder: (context) => Onboarding());
      case '/loancalculatorpage':
        return MaterialPageRoute(builder: (context) => LoanCalculatorPage());
      case '/emiplansofcustomer':
        return MaterialPageRoute(builder: (context) => LoanPlansPage());
      case '/emicollectedpage':
        return MaterialPageRoute(builder: (context) => EmiCollectedTillDate());
      case '/visithistorypage':
        return MaterialPageRoute(builder: (context) => VisitHistory());
      case '/depositpage':
        return MaterialPageRoute(builder: (context) => DepositPage());
      case '/withdrawpage':
        return MaterialPageRoute(builder: (context) => Withdrawl());
      case '/transactionpage':
        return MaterialPageRoute(builder: (context) => TransactionsPage());
      default:
        return null;
    }
  }
}
