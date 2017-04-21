# 主机测试 — 完全教程

主机测试之前，让我们一起学

## 什么是主机?

主机是一个高性能和高速计算机系统。它用于较大规模的计算目的，需要大量的可用性和安全性。它主要用于金融、保险、零售和其他关键领域，这些领域的海量数据被多次处理。

## 主机测试是什么？

主机测试被定义为大型机系统的测试，类似于基于 web 的测试。主机应用程序（否则称为作业批次）对使用需求开发的测试用例进行测试。

- 主机测试通常使用部署在输入文件中的各种数据组合在已部署的代码上执行。
- 在主机上运行的应用程序可以通过终端仿真器访问。模拟器是唯一需要安装在客户端机器上的软件。
- 在执行测试，测试人员只需要了解 CICS 屏幕导航。它们是为特定应用定制的。

如有任何变更，在 COBOL 代码、JCL 等。测试仪不必担心仿真器设置在机器上。通过一个终端仿真器工作的变化也会影响其他人。

在本教程中，您将学习-

- 主机属性

- 主机手动测试分类

- 主机测试方法

- 主机自动化测试工具

- 主机测试方法

- 批量测试所涉及的步骤

- 在线测试的步骤

- 在线批量集成测试的步骤

- 用于主机测试的命令

- 启动主机测试的先决条件

- 最佳实践

- 主机测试挑战和故障排除

- 常见的时间遇到

- 主机测试面临的常见问题

## 主机属性

1. **虚拟存储器**
    1. 它是一种技术，允许主处理器模拟存储大于实际量的实际存储。
    2. 它是一种技术以有效地使用存储器尺寸来存储和执行各种任务。
    3. 它使用磁盘存储器作为真实的扩展存储器。
2. **多重程序设计**
    1. 计算机同时执行多个程序。但在任何给定的时刻，只有一个程序可以控制 CPU。
    2. 这是一个设施，以使 CPU 有效利用。
3. **整批处理**
    1. 它是一种技术，任何任务都是以工作为单位来完成的。
    2. 作业可能会导致一个或多个程序按顺序执行。
    3. 作业调度程序对执行作业的顺序作出决定。为了使平均吞吐量最大化，作业按其优先级和类调度。
    4. 批处理必要的信息是通过 JCL（作业控制语言）。JCL 介绍批处理作业–程序，数据和所需的资源。
4. **时间共享**
    1. 在分时系统中，每个用户可以访问该系统的终端设备。而非作业计划事后执行，所述用户输入命令，立即进行处理。
    2. 因此这就是所谓的“交互式”。这使得用户与计算机直接进行交互。
    3. 分时处理被称为“前台处理”，批处理作业称为“后台处理”。
5. **假脱机**
    1. 假脱机同步外设操作站在线
    2. 滑阀装置用于存储程序/应用程序的输出。假脱机输出定向到输出设备如打印机（如果需要）。
    3. 这是一个利用缓冲的优势，使输出设备的有效利用的设施。

## 主机手动测试分类

主机手动测试可以分为两种类型：

1. **批处理作业测试**
    - 测试过程涉及在当前版本中实现的批处理作业的执行。
    - 从输出文件中提取测试结果并对数据库进行验证和记录。
2. **在线测试**
    - 在线测试是指测试的 CICS 屏幕类似的网页。
    - 可以改变现有屏幕的功能，或者添加新屏幕。
    - 各种应用程序可以有查询屏幕和更新屏幕。这些屏幕的功能需要作为在线测试的一部分进行检查。

## 主机测试方法

1. 业务团队准备需求文档。它决定了一个特定的项目或过程将如何在发布周期中进行修改。
2. 测试团队和开发接收需求文档。他们会发现有多少过程会受到变化的影响。通常情况下，在一个版本中，只有 20% 至 25% 的应用程序直接影响的定制要求。其他 75% 的释放将是开箱即用的功能，如测试应用程序和流程。
3.  因此，主机应用程序必须进行两部分测试：
    1. **测试要求** — 测试需求文档中提到的功能或更改的应用程序。
    2. **测试集成** — 测试接收或发送数据到受影响的应用程序的整个过程或其他应用程序。回归测试是这个测试活动的主要焦点。

## 主机自动化测试工具

以下是可用于主机自动化测试的工具列表。

- REXX
- Excel
- QTP

## 主机测试方法

让我们考虑一个例子：XYZ 保险公司有会员注册模块。从成员注册屏幕和脱机注册两个数据。正如我们前面讨论的，它需要两种方法进行主机测试、在线测试和批测试。

- **在线测试**是在会员注册屏幕上完成的。就像网页一样，数据库通过屏幕输入的数据进行验证。
- **脱机注册**可以进行招生或招生网站上的第三方。脱机数据（也称为批处理）将通过批处理作业进入公司数据库。按照规定的数据格式准备输入平面文件，并将其送入批处理作业序列。因此，对于大型机应用程序测试，我们可以使用以下方法。
    - 第一作业管线中的批量作业时验证数据输入。也就是说，例如特殊字符、字母数的字段等。
    - 第二作业根据业务条件验证数据的一致性。例如，一个孩子注册不应该包含相关数据，成员 ZIP 代码（这是不可用的服务，由入学计划），等等。
    - 第三作业修改可以输入到数据库中的格式的数据。例如，删除计划名称（数据库将只存储计划 ID，和保险计划名称），添加日期等。
    - 第四作业将数据加载到数据库中。
- **分批作业测试**分两个阶段进行：
    - 每个作业分别进行验证，并
    - 集成的验证工作是通过提供输入到第一平面文件数据库和验证工作。(有中间结果的验证，更要小心)

以下是主机测试的方法：

**步骤 1)** 冒烟测试/调试：

这个阶段的主要焦点是验证部署的代码是否在正确的测试环境中。它也确保代码中没有关键问题。

**步骤 2)** 系统测试：

以下是作为系统测试部分的测试类型。

1. **批量测试** — 此测试将通过验证输出文件的测试结果和在测试范围内的批作业完成的数据更改并记录它们。
2. **在线测试** — 这个测试将在主机应用程序的前端完成。这里的应用程序测试正确的输入字段，如保险计划，对计划的兴趣等
3. **在线批量集成测试** — 此测试将在具有批处理过程和在线应用的系统上完成。验证了在线屏幕和批处理作业之间的数据流和交互。
    (**这种类型的测试的例子** — 考虑更新的计划细节，如加息。兴趣的变化是在更新屏幕上完成的，并且受影响的帐户的余额细节将仅由夜间批处理作业修改。在这种情况下测试将通过验证计划详细信息屏幕和批量作业更新所有帐户运行。)。
4. **数据库测试** — 从主机应用程序数据的数据库（IMS，IDMS，DB2，VSAM /ISAM， 序列数据集, GDGS）验证其布局和数据存储。

**步骤 3)** 系统集成测试：

该测试的主要目的是验证与被测系统交互的系统的功能。

这些系统不受需求的直接影响。然而，他们使用的数据从系统测试。测试接口和不同类型的消息（如工作成功、作业失败、数据库更新等）是很重要的，这可能会导致系统之间的流动以及由此产生的各个系统所采取的操作。

在这个阶段做的测试类型是

1. 批量测试
2. 在线测试
3. 在线批量集成测试

**步骤 4)** 回归测试：

回归测试是任何类型的测试项目中的一个常见阶段。本试验在主机确保批量作业和在线屏幕不直接与被测系统的相互作用（或不在要求范围内）不受当前项目释放的影响。

为了有效的回归测试，一组特定的测试用例应该入围取决于其复杂性和回归床（测试用例库）应创建。当有一个新的功能发布到发布时，这个集合应该被更新。

**步骤 5)** 性能测试：

这种测试是为了确定瓶颈的高命中地区，如前端数据，升级在线数据库和项目的可扩展性的应用程序。

**步骤 6)** 安全测试：

这个测试是为了评估应用程序的设计和开发，以对付反安全攻击。

对系统进行双重安全测试：主机安全和网络安全。

需要测试的功能是

1. 综合性
2. 秘密性
3. 委任
4. 认证
5. 可利用性

## 批量测试所涉及的步骤

1. QA 团队接收包（包中包含的程序批准后，JCL，控制卡，模块等），测试人员应该预览和检索内容为 PDS 的要求。
2. 将生产 JCL 或发展成 QA JCL否则叫 JCL 作业设置。
3. 复制生产文件并准备测试文件。
4. 对于每一个功能，将有一个作业序列定义。（如在大型机部分的方法中解释），作业应使用测试数据文件的子命令提交。
5. 检查中间文件以找出遗漏或错误的原因。
6. 检查最终输出文件、数据库和阀芯，以验证测试结果。
7. 如果作业失败，阀芯将有工作失败的原因。地址错误并重新提交任务。

测试报告 — 缺陷应记录，如果实际结果偏离预期。

## 在线测试的步骤

1. 在测试环境中选择联机屏幕。
2. 测试每个字段的可接受数据。
3. 在屏幕上测试测试场景。
4. 从联机屏幕上验证数据库的数据更新。

测试报告 — 缺陷应记录，如果实际结果偏离预期。

## 在线批量集成测试的步骤

1. 在测试环境中运行作业，并在联机屏幕上验证数据。
2. 更新联机屏幕上的数据，并用更新的数据验证批处理作业是否正确运行。

## 用于主机测试的命令

1. SUBMIT — 提交后台工作。
2. CANCEL  — 取消后台作业。
3. ALLOCATE — 分配数据集
4. CANCEL — 复制数据集
5. RENAME — 重命名数据集
6. DELETE – 删除数据集
7. DELETE – 工作与程序，结合 JCL 库文件，不执行等。

有许多其他的命令需要时使用，但他们不是那么频繁。

## 启动主机测试的先决条件

主机测试所需的基本细节：

- 登录 ID 和密码以登录到应用。
- 简要了解 iSpf 命令。
- 文件名称、文件的类型和限定符。

在启动主机测试之前，应验证以下几个方面。

1. 工作
    1. 做一个工作扫描（Command – JOBSCAN）在执行它之前检查错误。
    2. 类参数应被归入的测试类。
    3. 直接的工作输出为阀芯或 JHS 或利用 mSgclaSS 参数要求。
    4. 把电子邮件工作阀芯或测试邮件 ID。
    5. 对初始测试的 FTP 步骤进行注释，然后将作业指向测试服务器。
    6. 如果 IMR（事件管理记录）是在工作中产生的，只是在工作或参数卡添加评论“试验目的”。
    7. 作业中的所有生产库都应更改并指向测试库。
    8. 这项工作不应无人看顾。
    9. 为防止工作运行在任何错误的一个无限循环的时间参数时，应添加指定的时间。
    10. 保存输出的工作，包括阀芯。阀芯可以保存使用 XDC。

2. 文件
    1. 只创建需要大小的测试文件。使用制导数字地面站（代数据组 – 同名的文件，但连续的版本号 – MYLIB.LIB.TEST.G0001V00,MYLIB.LIB.TEST.G0002V00 等等）时，需要将数据存储到连续的文件具有相同的名称。
    2. DISP（配置 - 描述系统进行保留或删除数据后正常工作的步骤或终止或异常）的文件参数应正确编码。
    3. 确保所有用于工作执行的文件被保存并关闭，以防止作业进入保留状态。
    4. 在测试时使用 GDGS 确定正确的版本。
    
3. 资料库
    1. 执行作业或联机程序时，确保未插入或更新或删除意外数据。
    2. 同时，确保正确的 DB2 区域用于测试。
    
4. 测试案例
    1. 总是测试边界条件，如空文件，第一次记录处理，最后记录处理等
    2. 总是包括正反两个测试条件。
    3. 如果标准程序，在程序中使用像检查点重新启动，晚上等模块，控制文件，包括测试用例验证如果模块被正确使用。
        
5. 测试数据
    1. 测试数据设置应在测试开始前完成。
    2. 从不修改测试区域上的数据而不通知。可能有其他团队工作相同的数据，他们的测试会失败。
    3. 在执行过程中需要生产文件的情况下，应在复制或使用前获得适当的授权。

## 最佳实践

1. 一批作业运行时，MAX CC 0 是一个指标，这项工作已成功运行。这并不意味着功能是正常工作。即使输出是空的，也不会按期望运行。因此，总是期望检查所有输出之前宣布工作成功。
2. 它最好的实战演习做工作。干燥运行输入文件是空的。这个过程应遵循的工作所影响的变化，为测试周期。
3. 在测试周期开始之前，应该先做好测试工作。这将有助于找出提前从而节省时间任何 JCL 错误执行期间。
4. 通过访问 DB2 表而 SPUFI（选项在模拟器访问 DB2 表），总是设置自动提交“不”为了避免意外的更新。
5. 测试数据的可用性是批量测试的主要挑战。所需的数据应在测试周期提前创建，并应检查其完整性。
6. 一些网上交易和批处理作业可以写数据到 MQS（消息队列）用于其他应用程序的数据传输。如果数据是无效的，它可能会禁用/阻止 MQS，这将影响到整个测试过程。这是检查 MQS 工作正常测试后的一个很好的实践。

## 主机测试挑战和故障排除

| 挑战 	| 方法 |
|-------|------|
| 不完全/不明确的要求 <br/><br/> 可能有访问用户手册/培训指南，但这些不一样的文件要求。| 测试人员应该参与 SDLC 从需求阶段开始。这将有助于验证需求是否是可测试的。 |
| 数据设置/识别 <br/><br/> 可能存在的情况下，现有的数据应重复使用的要求。有时很难从现有的数据中识别所需数据。 | 对于数据设置，国产工具可以根据需要使用。若要获取现有数据，应预先建立查询。在任何困难的情况下，一个请求可以被放置到数据管理团队创建或克隆所需的数据。 |
| 岗位设置 <br/><br/> 一旦作业被检索到 PDS，工作需要设置在 QA 区域。因此，作业没有提交与生产限定符或路径细节。 | 应使用作业设置工具，以克服安装过程中人为错误。  |
| ad-hoc 请求 <br/><br/> 可能有端到端测试需要支持的情况下，由于在上游或下游应用问题的问题。这些请求增加了执行周期的时间和精力。|	自动化脚本、回归脚本和骨架脚本的使用有助于减少时间和精力开销。 |
| 关于范围变更的时间发布 <br/><br/> 代码影响可能会彻底改变系统的外观和感觉。这可能需要对测试用例、脚本和数据进行更改。 |	范围变更管理流程和影响分析应到位。 |

## 常见的时间遇到

1. S001–I/O 错误发生。
    原因 — 读取文件结束时，文件长度错误，试图写入只读文件。
    
2. S002–无效 I/O 记录。
    理由 — 试图将记录写入长记录长度。
    
3. S004–错误发生在 OPEN。
    原因 – 无效的 DCB

4. S013–打开错误数据集。
    原因 — PDS 成员不存在，程序中的记录长度与实际记录长度不匹配。

5. S0c1–操作异常
    原因 — 无法打开文件，缺少 DD 卡
6. S0c4–保护违反异常/存储
7. 原因 — 没有尝试访问存储的节目。   
8. SC07–程序检查异常–数据
9. 原因 — 更改记录布局或文件布局。
10. SX22–任务已取消
11. S222–工作取消的用户没有转储。
12. S322—作业或步骤时间超过规定限值，或者程序是一个循环或足够的时间参数。
13. S522-TSO 会话超时。
14. S806–无法链接或负荷。
    原因 — 作业 ID 找不到指定的加载模块。
15. S80A—不够虚拟存储满足 getmain 或 freemain 请求。
16. S913–尝试访问数据集，该用户未被授权。
17. SX37–无法分配足够的存储的数据集。

错误帮助 — 误差的一个非常流行的工具来获得不同类型的时间的详细信息。

## 主机测试面临的常见问题

- **工作时间** — 为工作顺利完成，你应该检查数据，输入文件和模块是否在特定位置。晚上会面临由于多种原因，最常见的是 — 无效数据，不正确的输入字段，日期不匹配，环境问题，等等。

- **工作时间** – 为工作顺利完成，你应该检查数据，输入文件和模块在特定位置或不。晚上会面临由于多种原因，最常见的是 – 无效数据，不正确的输入字段，日期不匹配，环境问题，等等。
- **输入文件空** — 在某些应用中，文件将从上游进程接收。在使用接收文件测试当前应用程序之前，应该对数据进行交叉验证，以避免重新执行和返工。

## 总结：

- 主机像任何其它测试是测试过程从需求收集、测试设计、测试执行和结果报告。
- 为了有效地进行测试，测试人员应该参与设计会议，由开发和业务团队。
- 测试人员必须适应各种主机测试功能。像屏幕导航，文件和 PDS 的创建，保存测试结果等测试周期开始前。
- 主机应用程序测试是一个耗时的过程。一个明确的测试时间表应遵循的测试设计，数据的设置和执行。
- 批量测试和在线测试应该有效地完成，而不遗漏任何需求文档上提到的功能，并且没有测试用例应该被避免。