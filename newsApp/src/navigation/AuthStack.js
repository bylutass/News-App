import React from "react";
import { View, Text } from "react-native";
import {createStackNavigator} from '@react-navigation/stack';
import Tabs from './Tabs';
import SplashScreen from "@Screen/SplashScreen";
import Login from "@Screen/Login";
import Register from "@Screen/Register";
import OnBoarding from "@Screen/OnBoarding";
import NewsDetails from "@Screens/NewsDetails";
import CategoryList from "@Screens/CategoryList";
import About from "@Screens/About";


const AuthStack = () => {

    const Stack = createStackNavigator();

    return(
        <Stack.Navigator
            screenOptions={{
                headerShown: false
            }}
            initialRouteName="Splash">
            <Stack.Screen name="Tab" component={Tabs} />
            <Stack.Screen name="Splash" component={SplashScreen} />
            <Stack.Screen name="Login" component={Login} />
            <Stack.Screen name="Register" component={Register} />
            <Stack.Screen name="OnBoarding" component={OnBoarding} />
            <Stack.Screen name="NewsDetails" component={NewsDetails} />
            <Stack.Screen name="CategoryList" component={CategoryList} />
            <Stack.Screen name="About" component={About} />
        </Stack.Navigator>
    )
}

export default AuthStack;