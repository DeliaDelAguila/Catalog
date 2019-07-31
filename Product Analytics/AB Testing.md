[Medium Post](https://medium.com/@del.aguila.delia/ab-testing-in-8-steps-36259197114f)

## Why and when we should run A/B testing?
AB testing is a powerful methodology which helps when we want
- Decide whether or not to launch a new feature
- To quantify the impact of a feature or product
- Compare data with intuition (gut feeling) to better understand how users respond to certain parts of product

## Steps
We can summarize the whole process in nine steps:

![alt text](https://github.com/DeliaDelAguila/Catalog/blob/master/Images/AB%20testing%20flow%20v2.PNG "AB Testing Flow")


|No.|Step|Objective|
|---|----|---------|
|0.|A/A Testing (Optional Dummy test)|For first time tests, it will help to check systematic biases and reducing future errors|
|1.|Goal and Hypothesis| Define the objective of the test <ul></ul> Define changes that will be done, keeping one change per treatment.<ul></ul> Define Hypothesis (hypothesis we want to proof) and Null Hypothesis (hypothesis to disproof)|
|2.|Control and Treatment|Based on the treatment definition at step 1 determine sample A and sample B characteristics, in general:<ul><li>Sample A: Control sample, no changes</li> <li>Sample B: Treatment, with change</li></ul> <ul></ul> Make sure just one thing change between treatment and control<ul></ul>Determine the fraction of users for treatment: <ul><li>50/50: The ideal</li> <li>90/10: For high impact experiments, but will imply a bigger sample</li>|
|3.|Metrics|Identify key metric for decision making and other behavioural metrics|
|4.|Data to Collect|Identify what data need to be collected, at least the following should be included: <ul><li>User ID or Cookie ID </li> <li>User Experiment Assignment </li> <li>KPI </li> <li>Behavioral metrics </li></ul> Determine the way data will be collected, automate the process as much as you can|
|5.|Behaviour Flow|Understand dependencies with any other experiments running (cannibalization) <ul></ul>Understand different User flows at different platforms and user login status <ul></ul>Test all possible user flows|
|6.|Decision Difference A over B|Determine how small of a difference you would like to detect, for example, 10%|
|7.|AB Test Size|Run a power analysis based on the following to decide sample size and how long you need to run the test: <ul><li>Minimum measurable difference (for example, 10%) </li> <li>False Negative (Power of the test: 1-FN): There is an effect but we do not see it (Falsely we say there is not a difference), default industry value FN < 20% </li> <li>False Positive (Significant Level): We see the significant result but there is not (Falsely we say there is a difference), default industry value FP < 5% </li></ul> R Code:<ul></ul> ```power.prop.test(p1=[KPI sample A], p2=[KPI expected with minimal increase], sig.level=[Significant Level], power=[Power of the Test]) ```|
|8.|Run|Run the test for *at least* the time determine at Step 7|
|9.|Results Analysis|Do conclusions |

### References
A/B Testing, A Data Science Perspective
 Lisa Qian
 O'Reilly Media, Inc. 2015
