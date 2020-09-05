import React, { Component } from "react";
import { Container, Content, Header, Left, Body, Title, Subtitle, Right, Button, Icon, List, ListItem, Thumbnail, Text, View } from "native-base";
import { Actions } from "react-native-router-flux";
import { URL, KEY, LOGO } from "../utils/Const";
import NumberFormat from 'react-number-format';

export default class Detail extends Component{

    constructor(){
        super();
        this.state = {
            results:[]
        }
    }
    
    componentDidMount(){
        this.cekOngkosKirim();
    }

    cekOngkosKirim = () =>{
        let params = this.props.data;
        const formData = new URLSearchParams();
        formData.append('origin', params.originCity);
        formData.append('destination', params.destinationCity);
        formData.append('weight', params.weight);
        formData.append('courier', params.courier);

        fetch(URL+'/cost', {
            method: 'POST',
            headers:{
                'Content-Type': 'application/x-www-form-urlencoded',
                'key': KEY
            },
            body: formData.toString()
        }).then((response)=>response.json()).then((responseData)=>{
            let status = responseData['rajaongkir']['status']['code'];
            console.log(responseData);
            if(status == 200){
                this.setState({
                    results: responseData['rajaongkir']['results'][0]['costs']
                })
                console.log(this.state.results);
            }
        });
    }
    
    render(){
        let costItem =<View></View>
        if(this.state.results){
            costItem = this.state.results.map(item => {
                return(
                    <ListItem thumbnail key={new Date().getMilliseconds+Math.random()}>
                        <Left>
                            <Thumbnail source={{uri: LOGO[this.props.data.courier]}}/>
                        </Left>
                        <Body>
                            <Text>{item.service}</Text>
                            <Text note>{item.description}</Text>
                            <Text>{item.cost[0].etd}</Text>
                        </Body>
                        <Right>
                            <NumberFormat
                                value={item.cost[0].value}
                                displayType={'text'}
                                thousandSeparator={true}
                                prefix={'Rp. '}
                                renderText={value => <Text>{value}</Text>}/>
                        </Right>
                    </ListItem>
                );
            });
        }
        return(
            <Container>
                <Header>
                    <Left>
                        <Button transparent onPress={()=> Actions.pop}>
                            <Icon style={{color:'white'}} type='Entypo' name='chevron-small-left'/>
                        </Button>
                    </Left>
                    <Body style={{flex:4, alignItems:'center'}}>
                        <Title>Ongkos kirim</Title>
                    </Body>
                    <Right />
                </Header>
                <Content>
                    <List>
                        {costItem}
                    </List>
                </Content>
            </Container>
        );
    }
}