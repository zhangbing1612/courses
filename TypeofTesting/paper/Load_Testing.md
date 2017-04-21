# 负载测试指南：工具、进程和实例

## 什么是负载测试?

负载测试是一种性能测试，它决定了系统在实际负载条件下的性能。此测试有助于确定应用程序在多个用户同时访问时的行为。

![](./images/L1.png)
这种测试通常识别-

- 最大工作容量的应用
- 确定当前基础设施足以运行应用程序
- 可持续性的应用程序与用户负载峰值
- 并发用户的应用程序可以支持、扩展和带宽以允许多个用户访问它。

它是一种非功能性测试。负载测试通常被用于在客户端/服务器、基于 Web 的企业内部网和因特网应用。

## 负载测试的需要：

一些非常受欢迎的网站，当他们得到大量的访问量时都受到了严重的停机时间。电子商务网站投入大量的广告活动，但不是在负载测试，以确保最佳的系统性能，当营销带来的流量。

考虑以下示例

- 流行的玩具商店 toysrus.com，不能处理增大的流量造成的广告损失导致的营销费用，和潜在的玩具。
- 航空公司网站没有能够处理在节日中提供 10000+ 用户。
- 大英百科全书宣布免费访问的在线数据库，作为促销优惠。他们无法跟上与猛攻的访问好几个星期。

许多网站遭受延迟加载时间，当他们遇到交通拥挤。几个事实

- 大多数用户点击后 8 秒延迟加载页面  
-每年因表现欠佳损失 4.4 亿美元

## 为什么负载测试？

- 负载测试提供了系统的信心和可靠性和性能
- 负载测试可帮助识别瓶颈的系统用户在压力情景下未来在生产环境中。
- 负载测试给出优异的保护性能差并且容纳互补战略绩效管理和监控的生产环境。

## 负载测试目标：

在将应用程序推向市场或生产之前，负载测试确定以下问题：

- 每个事务的响应时间
- 在各种负荷中系统部件的性能
- 在不同载荷数据库组件的性能
- 客户端和服务器的网络延迟
- 软件的设计问题
- 服务器配置问题，如 Web 服务器、应用服务器、数据库服务器等。
- 硬件限制最大化问题，像 CPU、内存限制、网络瓶颈等。

负载测试将决定系统是否需要进行微调或硬件和软件的修改，以提高性能。

## 启动负载测试前需要设置环境：

| 硬件平台 |	软件配置 |
|---------|---------|
| 服务器机器<br/> 处理器<br/> 追忆<br/> 圆盘存储器<br/> 机器负载配置<br/> 网络配置 | 执行系统<br/> 软件服务器 |

## 负载测试的先决条件：

主要指标是响应时间，以便进行载荷测试。负载测试开始之前，你必须决定-

- 该响应时间是否已经被测量和定量——比较
- 响应时间是否适用于业务过程——有关
- 响应时间是否合理——现实
- 响应时间是否可实现-实现
- 使用工具或秒表是否可以测量响应时间——可测

## 负载测试的策略：

有许多的方式来执行负载测试。以下是一些负载测试策略
	
![](./images/L3.png)

- **手动负载测试**：这是执行负载测试的策略之一，但它不产生可重复的结果，不能提供可衡量的水平上的应用程序的压力，是一个不可能的过程来协调。
- **在开发负载测试工具**：一个组织，实现了对负载测试，可以建立自己的开发工具来执行负载测试。
- **负载测试开源工具**：有几个负载测试工具可作为开源，免费的。他们可能不会像他们的付费同行一样复杂，但如果你是在预算，他们是最好的选择。
- **企业级负载测试工具**：他们通常和捕获/回放设备。他们支持大量的协议。它们能够模拟的大量用户。

## 负载测试过程：

负载测试过程可以简单描述如下：

1. 创建一个专用于负载测试的环境测试
2. 确定以下
3. 负载测试方案
4. 负载测试用于确定交易的应用
    - 数据为每个交易准备
    - 用户访问系统时，需要预测
    - 连接速度确定。一些用户可以经由租用线路而另一些可以使用拨号
    - 确定不同的浏览器和操作系统的用户使用
    - 在所有配置的服务器，比如W eb、应用程序和数据库服务器
5. 测试执行和监视情景。收集各个度量
6. 分析结果。提出建议
7. 调整优化系统
8. 重新测试

## 负载测试指南：

![](./images/L4.png)	

1. 负载试验应该是一次计划中的应用在功能上变得稳定。
2. 大量唯一的数据应该在数据库
3. 用户应该决定或脚本的每个脚本
4. 避免创建的详细日志，以节省空间的磁盘 IO
5. 为了避免在图像的下载站点
6. 响应时间一致性随经过的时间应记录而且同样应在比较了各种运行试验

## 负载测试和压力测试的差异：

| 负载测试 |	压力测试 |
|---------|---------|
| 负载测试系统的瓶颈，当负载逐渐增加如何在不同工作负载检查系， |	压力测试测试来确定该系统的最大点之后将断裂。 |

## 功能测试与负载测试的区别：

| 功能测试  | 负载测试 |
|---------|---------|
|功能测试的结果易于预测，我们将采取适当步骤和前提限定 |	负载测试是不可预知的结果 |
| 稍微不同的功能性测试结果 |	负载测试结果迥然不同 |
| 执行功能测试的频率会很高 |	执行负载测试的频率将低 |
| 测试功能的结果取决于测试的数据 |	负载测试的数量取决于用户的数量。|

## 负载测试工具：

![](./images/L5.png)	

推荐的负载测试的工具：

- WebLOAD
- [LoadRunner](http://www.guru99.com/loadrunner-v12-tutorials.html)
- Astra Load Test
- Studio，合理负载
- SilkPerformer
- [JMeter](http://www.guru99.com/jmeter-tutorials.html)

WebLOAD 和 LoadRunner 是负载测试是最常用的工具。它们的特点如下——

### WebLOAD

WebLOAD 是一个企业级的负载测试产品的支持技术，数百家企业中应用，网络协议和操作系统。WebLOAD 是众所周知的灵活性–它支持许多集成和脚本可以运行复杂的测试场景。

WebLOAD，你可以在内部部署或在云中负载。 

WebLOA D主要特点包括：

- 与相关参数综合 IDE，响应验证和本地使用 JavaScript。
- 负载生成控制台，产生大量的虚拟用户负载–本地和云端，在 Windows 或 Linux，通过 AWS 和其他云提供商。
- 分析仪表与超过 80 个可配置的报表模板和一个协同的根本原因分析的 Web 仪表盘。

阅读更多关于 WebLOAD [信息](http://www.radview.com/experience-WebLOAD/?utm_source=Guru99%20Tutorial&utm_medium=Text&utm_campaign=Guru99)。

### Load Runner：

Load Runner 是 HP 工具，用于测试正常和峰值负载条件下的应用程序。负载流通过创建模拟网络流量的虚拟用户来生成负载。它模拟实时使用，如生产环境，并给出图形化的结果。

## 负载测试的优缺点：

以下是负载测试的优点：

- 生产前识别性能瓶颈
- 提高了系统的可扩展性
- 有关风险最小化系统停机时间
- 故障的成本降低
- 提高客户满意度

负载测试的缺点：

- 需要编程知识以使用负载测试的工具。
- 工具可为昂贵的定价取决于虚拟用户支持。

## 结论：

可扩展性和稳定性的应用程序之前，负载测试通常会提高性能瓶颈它可用于生产。这种测试有助于确定应用程序的最大操作能力以及系统瓶颈。