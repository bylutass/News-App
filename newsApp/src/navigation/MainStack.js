import React from "react";
import {createStackNavigator} from '@react-navigation/stack';
import Tabs from './Tabs';
import SplashScreen from "@Screens/SplashScreen";
import NewsDetails from "@Screens/NewsDetails";
import CategoryList from "@Screens/CategoryList";
import About from "@Screens/About";


const MainStack = () => {

    const Stack = createStackNavigator();

    return(
        <Stack.Navigator
            screenOptions={{
                headerShown: false
            }}
            initialRouteName="Splash">
            <Stack.Screen name="Splash" component={SplashScreen} />
            <Stack.Screen name="Tab" component={Tabs} />
            <Stack.Screen name="NewsDetails" component={NewsDetails} />
            <Stack.Screen name="CategoryList" component={CategoryList} />
            <Stack.Screen name="About" component={About} />
        </Stack.Navigator>
    )
}

export default MainStack;