# Zagent Demo

## Device creation

To start the demo, first connect to the [Zerynth Cloud](https://cloud.zerynth.com)

Create a new machine
![create_new]

Select the advanced configurator
![select_adv]

Select Production Machine and give it a name
![select_prod]

Now, configure the machine using the demo template:

1. Select Template
2. Select Production Insights with OPCUA
3. Click on the OPCUA node
4. Set the ip (the IP adderss of your PC) and the port (default is `49580`) of the OPCUA simulator (see the [greenfield simulator](#start-the-greenfield-simulator) section) and then scroll down the node settings to save
5. Deploy the machine

![configure_node]

Download the demo package and return to the homepage
![download]

Open the Production Insights app and enjoy!
![select_prod_dash]

## Start the greenfield simulator

WIP

## Start the zAgent

Now, for the final step of this demo open a terminal and move to the downloads folder to unzip and start the demo package:

```bash
cd ~/Downloads
unzip -o zagent-demo-dev-id.zip
cd zagent-demo-dev-id.zip
python start.py
```



[//]: #                   (Images)
[configure_node]: ../../img/ZagentDemo/configure_node.png 
[create_new]: ../../img/ZagentDemo/create_new.png 
[download]: ../../img/ZagentDemo/download.png 
[finish]: ../../img/ZagentDemo/finish.png 
[select_adv]: ../../img/ZagentDemo/select_adv.png 
[select_prod_dash]: ../../img/ZagentDemo/select_prod_dash.png 
[select_prod]: ../../img/ZagentDemo/select_prod.png 
[select_zagent]: ../../img/ZagentDemo/select_zagent.png
