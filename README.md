<p align="center">
    <a href="https://www.finclip.com?from=github">
    <img width="269" src="https://www.finogeeks.com/static/media/logo-footer.3a03d2c3.png">
    </a>
</p>

<p align="center"> 
    <strong>FinChat </strong></br>
<p>
<p align="center"> 
        <i>A general purpose, open, Messsging As A Platform (MaaP) solution.</i>
<p>

<p align="center"> 
	👉 <a href="https://www.finogeeks.com/Finchat?from=github">https://www.finogeeks.com/Finchat</a> 👈
</p>

-----

## Introduction

Ligase is a Golang-based implementation of Matrix home server, following the Matrix spec as defined at matrix.org. It has been used in production by an array of financial institutions in various scenarios, including but not limited to OTC-style trading (i.e in the bond trading market), collaborative workspace, stock brokerage, retail banking and more. It usually serves as the core to support more sophisticated financial applications running in secured, on-premise and regulation-compliant environments. 

**But nothing limits it as a powerful Instant Messaging server as well as a general purpose, open, Messsging As A Platform (MaaP) solution.**

## Alternatives to Synapse and Dendrite

Synapse and Dendrite are two reference implementation based upon the Matrix spec, implemented in Python and Golang, respectively. Here we provide yet another alternative, field-tested by a number of banks, stock brokerage houses and fintech companies since 2018. Financial applications require an IM with lower latency, better scalability, higher concurrency and stronger backend monitoring capabilities. We therefore derived a branch originally from Dendrite but since then parting our way from it to drill into a completely different implementation with a different architecture.

## Architecture and other technological considerations

While sticking to the Matrix spec as much as it could be, this implementation has adopted the following approaches:

* a Fan-in/Fan-out topology
* a CQRS (Command and Query Responsibility Segregation) pattern
* leveraging Kafka for event sourcing and stream message storage
* micro-service based with full leverage to containers (i.e. Docker)  and container choreography platforms (i.e. Kubernetes/Rancher)

## A Cloud-native K8S application

The implementation will gradually take advantage of cloud facilities so as to reach the state of being cloud-native, inherently supporting DevOps. It deploys via docker-compose as a single node deployment. But it meets enterprise-grade requirements to run as a native K8S application, leveraging K8S' elasticity and resiliency. Integration with Prometheus gives IT operators a powerful monitoring tool.

## Installation

Read the [INSTALL](./INSTALL.md)

## Contributing

Read the [CONTRIBUTING](./CONTRIBUTING.md)

## Troubleshooting

problems and known solutions

## Support channels

Slack/Reddit/StackOverflow/FinChat

## About Finogeeks

You can visit [finogeeks.com](https://www.finogeeks.com/) to get more details.
