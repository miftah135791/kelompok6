import React, { Component } from "react";
import { Container, Content, Header, Left, Body, Picker, Title, Subtitle, Right, Card, CardItem, Item, Text, Label, Input, View, Button, Form } from "native-base";
import {Actions} from 'react-native-router-flux';
import {KEY, URL} from '../utils/Const';

export default class Home extends Component{

    constructor(){
        super();
        this.state = {
            provinces: [],
            originCities: [],
            destinationCities: [],
            selectedOriginProvince: null,
            selectedOriginCity: null,
            selectedDestinationProvince: null,
            selectedDestinationCity: null,
            weight: 0,
            courier: null
        }
    }

    componentDidMount(){
        this.onLoadProvince();
    }

    onLoadProvince = () => {
        fetch(URL+'/province',{
            method: 'GET',
            headers: {
                'key': KEY 
            }
        }).then((response)=>response.json()).then((responseData) =>{
            console.log(responseData);
            let status = responseData['rajaongkir']['status']['code'];
            if(status == 200){
                this.setState({
                    provinces: responseData['rajaongkir']['results']
                })
            }
        });
    }

    onOriginProvinceChange = (val) =>{
        this.setState({
            selectedOriginProvince: val
        }, ()=>{
            fetch(URL+'/city?province='+this.state.selectedOriginProvince.province_id,{
                method: 'GET',
                headers: {
                    'key': KEY
                }
            }).then((response) => response.json()).then((responseData)=>{
                let status = responseData['rajaongkir']['status']['code'];
                if(status == 200){
                    this.setState({
                        originCities: responseData['rajaongkir']['results']
                    })
                }
            })
        })
    }

    onDestinationProvinceChange = (val) =>{
        this.setState({
            selectedDestinationProvince: val
        }, ()=>{
            fetch(URL+'/city?province='+this.state.selectedDestinationProvince.province_id,{
                method: 'GET',
                headers: {
                    'key': KEY
                }
            }).then((response) => response.json()).then((responseData)=>{
                let status = responseData['rajaongkir']['status']['code'];
                if(status == 200){
                    this.setState({
                        destinationCities: responseData['rajaongkir']['results']
                    })
                }
            })
        })
    }

    onOriginCityChange = (val) =>{
        this.setState({
            selectedOriginCity: val
        })
    }

    onDestinationCityChange = (val) =>{
        this.setState({
            selectedDestinationCity: val
        })
    }

    onNavigationToDetail = () =>{
        let params = {
            originCity: this.state.selectedOriginCity.city_id,
            destinationCity: this.state.selectedDestinationCity.city_id,
            weight: this.state.weight,
            courier: this.state.courier
        }
        console.log(params);
        Actions.detail({data: params});
    }
    
    
    render(){

        let provinceItems = <View></View>
        let provinceItemDestination = <View></View>
        let originCityItem = <View></View>
        let destinationCityItem = <View></View>
        if(this.state.provinces){
            provinceItems = this.state.provinces.map(prov => {
                return(
                    <Picker.Item
                        key={prov.province_id} label={prov.province} value={prov}/>
                );
            })
        }
        if(this.state.provinces){
            provinceItemDestination = this.state.provinces.map(prov => {
                return(
                    <Picker.Item
                        key={prov.province_id} label={prov.province} value={prov}/>
                );
            })
        }
        if(this.state.originCities){
            originCityItem = this.state.originCities.map(city =>{
                return(
                    <Picker.Item
                        key={city.city_id}
                        label={city.city_name}
                        value={city}/>
                );
            });
        }
        if(this.state.destinationCities){
            destinationCityItem = this.state.destinationCities.map(city =>{
                return(
                    <Picker.Item
                        key={city.city_id}
                        label={city.city_name}
                        value={city}/>
                );
            });
        }
        
        return(
            <Container>
                <Header style={{backgroundColor:"#004BC2"}}>
                    <Left/>
                    <Body>
                        <Title style={{color:'#fff'}}>cekOngkir</Title>
                        <Subtitle style={{color:'#fff'}}>Input data</Subtitle>
                    </Body>
                    <Right/>
                </Header>
                <Content padder>
                    <Card>
                        <CardItem header>
                            <Text>Alamat asal</Text>
                        </CardItem>
                        <CardItem>
                            <Body>
                                <Item picker>
                                    <Picker mode="dropdown" style={{width: undefined, color:"#FF5733"}} selectedValue={this.selectedOriginProvince} onValueChange={this.onOriginProvinceChange}>
                                       {provinceItems}
                                    </Picker>
                                </Item>
                                <Item picker style={{marginTop:15}} selectedValue={this.state.selectedOriginCity} onValueChange={this.onOriginCityChange}>
                                    <Picker mode="dropdown" style={{width: undefined, color:"#FF5733"}}>
                                        {originCityItem}
                                    </Picker>
                                </Item>
                            </Body>
                        </CardItem>
                    </Card>
                    <Card>
                        <CardItem header>
                            <Text>Alamat tujuan</Text>
                        </CardItem>
                        <CardItem>
                            <Body>
                                <Item picker>
                                    <Picker mode="dropdown" style={{width: undefined, color:"#FF5733"}} selectedValue={this.selectedDestinationProvince} onValueChange={this.onDestinationProvinceChange}>
                                       {provinceItemDestination}
                                    </Picker>
                                </Item>
                                <Item picker style={{marginTop:15}} selectedValue={this.state.selectedDestinationCity} onValueChange={this.onDestinationCityChange}>
                                    <Picker mode="dropdown" style={{width: undefined, color:"#FF5733"}}>
                                        {destinationCityItem}
                                    </Picker>
                                </Item>
                            </Body>
                        </CardItem>
                    </Card>
                    <Card>
                        <CardItem header>
                            <Text>Berat paket</Text>
                        </CardItem>
                        <CardItem>
                            <Body>
                                <Item floatingLabel>
                                    <Label>Grams</Label>
                                    <Input onChangeText={(val)=>this.setState({weight:val})} maxLength={6}/>
                                </Item>
                            </Body>
                        </CardItem>
                    </Card>
                    <Card>
                        <CardItem>
                            <Text>Kurir</Text>
                        </CardItem>
                        <CardItem>
                            <Body>
                                <Item picker>
                                <Picker mode="dropdown" style={{width: undefined, color:"#FF5733"}} selectedValue={this.state.courier} onValueChange={(val)=>this.setState({courier:val})}>
                                        <Picker.Item label="JNE" value="tiki" />
                                        <Picker.Item label="Tiki" value="tiki" />
                                        <Picker.Item label="POS" value="pos" />
                                    </Picker>
                                </Item>
                            </Body>
                        </CardItem>
                    </Card>
                </Content>
                <View style={{justifyContent:'flex-end', marginBottom:20}}>
                    <Button onPress={this.onNavigationToDetail} block style={{margin:10, backgroundColor:'#900C3F'}}>
                        <Text style={{color:'#fff', fontWeight:'500'}}>Cek Ongkir</Text>
                    </Button>
                </View>
            </Container>
        );
    }
}