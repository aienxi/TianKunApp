//
//  LoginAgreementViewController.m
//  TianKunApp
//
//  Created by 天堃 on 2018/6/4.
//  Copyright © 2018年 天堃. All rights reserved.
//

#import "LoginAgreementViewController.h"
#import <QuickLook/QuickLook.h>

@interface LoginAgreementViewController ()<QLPreviewControllerDelegate,QLPreviewControllerDataSource>


@end

@implementation LoginAgreementViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];

}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:animated];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.titleView setTitle:@"服务协议"];
    CGFloat h = NavBarHeight;
    NSString *pdfPath = [[NSBundle mainBundle] pathForResource:@"建筑一秘用户服务协议" ofType:@"docx"];

    
    
    
    
}
- (NSString *)contentText{
    return @"《建筑一秘用户服务协议》\
    \
    \
    “建筑一秘”提供各项在线便捷服务的所有权和经营权归河南国悦建设管理有限公司所有。以下均用“建筑一秘”代表。\
    “建筑一秘”提供找工作、找人才、记工记账、证件管理及其它与此相关联的在线便捷服务。用户行为必须接受以下所列条款制约，如若不接受该协议，则不能成为“建筑一秘”用户。如接受本声明之条款，表示您将遵守本协议之规定。使用“建筑一秘”产品该协议即生效。“建筑一秘”保留更新本协议和再通知用户的权力。如果您对“建筑一秘”声明有关本协议的任何更改都是不可接受的，则您享有的“建筑一秘”资格与服务即被取消；否则“建筑一秘”将默认您的行为构成对本协议更改的接受。\
    用户服务基本条款\
    用户定义：\
    该协议的用户包含个人、企业，以下统称为该平台的“用户”  。\
    用户必须同意使用“建筑一秘”仅用于找工作、找人才、记工记账、证件管理等合法的目的。 “建筑一秘”保留对用户个人信息进行修改的权力。未经用户的许可，“建筑一秘”不会把用户的个人信息转发给任何未经注册的企业，但是用户须同意“建筑一秘”可以采用其个人资料作为营销用途。“建筑一秘”对于任何公司（不管它是否在中国境内）与用户之间产生的任何纠纷，概不负责。\
    一、服务内容\
    1.1  “建筑一秘”在开通的城市，将信息展示在区域中。用户可根据实际情况选择适合自己的内容进行自主查看。\
    1.2  网络服务的具体内容由“建筑一秘”根据实际情况提供。“建筑一秘”保留随时变更、中断或终止部分或全部网络服务的权利。“建筑一秘”行使修改或中断服务的权利，不须对用户或第三方承担任何责任。\
    1.3  “建筑一秘”在提供网络服务时，可能会对部分网络服务的用户收取一定的费用。在此情况下，“建筑一秘”会在相关页面上做明确的提示。如用户拒绝支付该费用，则不能使用相关的网络服务。\
    1.3.1  免费服务的使用可能需要满足一定的条件，具体条件以“建筑一秘”公布的条件为准。对于免费服务，“建筑一秘”有权根据实际情况，对免费服务的具体服务内容、服务期限及服务标准等进行单方变更，用户对此无异议，并接受前述的变更。“建筑一秘”无需为此向用户承担任何责任。\
    1.3.2“建筑一秘”所提供的人企业咨询管理服务套餐为收费服务。费用具体说明以建筑一秘APP相应页面为准。若用户使用本服务中的收费服务，用户应按有关的收费标准和付款方式支付相关费用。\
    1.3.3“建筑一秘”可能根据实际需要对收费服务的收费标准、方式等进行修改和变更，“建筑一秘”也可能会对部分免费服务开始收费。前述修改、变更或开始收费前，“建筑一秘”将在相应服务页面进行通知或公告。\
    二、双方权利与义务\
    2.1  用户在申请使用“建筑一秘”网络服务时，必须向“建筑一秘”提供准确真实的个人资料。在平台上需要发布信息的用户须保证发布的信息真实，且具有相关资质证明。平台注册用户须对提供的个人资料承担一切责任，如个人资料有任何变动，必须及时更新。\
    2.2  用户通过唯一手机号进行验证码获取后，在建筑一秘上的登录行为，该账号由用户负责妥善保管，用户应当对以其用户账号进行的所有活动和事件负法律责任。\
    2.3  用户须同意接受“建筑一秘”通过短信或其他方式向用户发送职位招聘信息或其他相关通知信息等。\
    2.4  用户须同意建筑一秘可以将其个人资料作为营销的用途。\
    用户在使用“建筑一秘”网络服务过程中，必须遵循以下原则：\
    2.4.1  遵守中华人民共和国现行有关的法律和监关规定；\
    2.4.2不得为任何违法目的的行为而使用“建筑一秘”网络服务系统；\
    2.4.3遵守所有与国家网络监管部门规定的有关的网络协议、规定和程序；\
    2.4.4不得利用“建筑一秘”网络服务系统进行任何可能对互联网的正常运转造成不利影响的行为；\
    2.4.5不得利用“建筑一秘”网络服务系统传输任何骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料；\
    2.4.6不得利用“建筑一秘”网络服务系统进行任何不利于“建筑一秘”的行为；\
    2.4.7如发现任何非法使用用户帐号或帐号出现安全漏洞的情况，应立即通知“建筑一秘”。\
    2.4.8用户必须同意使用建筑一秘仅用于合法的目的。但建筑一秘不承诺用户个人信息长期储存在建筑一秘数据库中。建筑一秘保留对用户个人信息进行修改或修改任何不适信息的权力。\
    2.5用户通过本平台所发生的一切权益及债务关系，劳务、民事等各类法律纠纷，均由用户本人承担，本平台概不负责，亦不负任何法律责任；\
    2.6  建筑一秘有权对用户个人信息进行适当修改。\
    2.7  未经用户的许可，建筑一秘不把个人信息转发给任何第三方。\
    2.8  建筑一秘对于任何公司（不管它是否在中国境内）与用户之间的任何纠纷，概不负责。\
    2.9  在不透露单个用户隐私资料的前提下，“建筑一秘”有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。\
    三、版权声明\
    3.1  “建筑一秘”提供的网络服务内容包括：文字、软件、声音、图片、录像、图表等。所有这些内容版权归河南国悦建设管理有限公司。\
    3.2  用户只有在获得“建筑一秘”或其他相关权利人的授权之后才能使用“建筑一秘”提供的网络服务，不能擅自复制、再造“建筑一秘”提供的网络服务、或创造与内容有关的派生产品。\
    3.3  转载必须征得建筑一秘或相关权利人的书面特别授权，注明作者及文章出处“建筑一秘”；凡作者或权利人声明不得转载的文章，任何单位及个人不得转载。若违反上述规定，“建筑一秘”保留追究当事人法律责任的权利。\
    3.4  未经“建筑一秘”授权，任何人不得建立本应用软件的镜像。\
    四、隐私保护\
    4.1  保护用户隐私是“建筑一秘”的一项基本政策。“建筑一秘”保证不对外公开或向第三方提供用户注册资料及用户在使用网络服务时存储在“建筑一秘”的非公开内容，但下列情况除外且不承担任何法律责任：\
    4.1.1事先获得用户的明确授权；\
    4.1.2根据有关的法律法规要求；\
    4.1.3按照相关政府主管部门的要求；\
    4.1.4为维护社会公众的利益；\
    4.1.5为维护“建筑一秘”的合法权益。\
    4.2  完善个人信息的用户同意本应用软件对其信息进行善意利用。本应用软件所提供的服务会自动收集有关访问者的信息，这些信息包括访问者人数、访问时间、访问页面等，本应用软件将使用这些信息来对我们的服务器进行分析和对应用软件进行管理。\
    4.3  共同维护用户名及密码的安全。用户一旦注册成功，将得到唯一的用户名和密码。用户须妥善保管您的用户名和密码，不得告诉他人，否则因此产生的风险和损失由用户自行承担。用户要对以用户名进行的所有活动和事件负全部责任。用户可随时根据需要更改密码。用户若发现任何非法使用自己的用户名的情况，请立即通告建筑一秘。\
    4.4“建筑一秘”可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与“建筑一秘”同等的保护用户隐私的责任，则“建筑一秘”可将用户的注册资 料等提供给该第三方。\
    五、 信息的发布\
    5.1 任何用户不得使用“建筑一秘”发送或储存任何违反适用法律或法规的资料；\
    5.2任何用户不得以任何形式侵犯他人的版权、商标权、商业秘密或其他知识产权；\
    5.3任何用户不得侵犯个人和社会大众的隐私安全；禁止传输任何非法的、骚扰性的、中伤性的、辱骂性的、恐吓性的、伤害性、庸俗或淫秽的信息。\
    5.4 任何用户不得发布任何与本软件求职、招聘目的不适之信息；\
    5.5 任何用户不得发布任何不完整、不准确、虚假的或具有误导性的信息；\
    5.6 任何用户对所发布的信息承担完全责任。\
    六、信息的使用\
    6.1 任何用户仅可就求职目的使用招聘者之招聘信息，不得用于任何其他用途，任何用户必须保证不用于下列任何一种用途：\
    (a) 供“建筑一秘”的竞争同行用此方法寻求与招聘单位的业务联络或进行与“建筑一秘”相竞争的其他活动。\
    (b) 擅自删除或修改任何其他人或“建筑一秘”公布的资料。\
    (c) 擅自将取自“建筑一秘”的资料转给第三方使用或向第三方透露。\
    6.2 “建筑一秘”提供的其它信息，仅应限于与其相应内容有关的目的而被使用；任何用户不得将任何本软件的信息用作任何商业目的。\
    七、信息的公开\
    7.1 “建筑一秘”不公开任何用户不愿意公开的信息，除非：\
    (a) 用户授权“建筑一秘”透露这些信息；\
    (b) 相应的法律要求及程序要求“建筑一秘”提供用户的资料；\
    (c) 该信息系用户已发布的信息；\
    (d) 该信息系为已进入公共领域的信息。\
    7.2 “建筑一秘”绝对尊重用户，不擅自编辑或修改用户的登记内容，除非有法律要求及公安管理规定；\
    7.3 “建筑一秘”保留判定用户的行为是否符合本协议的权利，如果“建筑一秘”认为用户违背了本协议，应事先通知用户停止违反本协议的行为。\
    7.4 所有发给用户的通告都可通过用户在“建筑一秘”登记注册的电子邮件或软件公告传送，且在传送后壹日内视为送达。服务条款的修改、服务变更、或其它重要事项都会以此形式进行。\
    八、信息的安全性\
    8.1用户不得破坏或企图破坏“建筑一秘”或软件的安全规则，其中包括但不限于:\
    8.1.1接触未经许可的数据或进入未经许可的服务器或帐户；\
    8.1.2没有得到许可，企图探查，扫描或测试系统或网络的弱点，或者破坏安全措施；\
    8.1.3企图干涉对用户及网络的服务，包括，并不限于，通过超载， \"邮件炸弹\"或\"摧毁\"等手段；\
    8.1.4发送促销，产品广告及服务的E-mail；\
    8.1.5伪造TCP/IP数据包名称或部分名称。破坏系统或网络可能导致犯罪,\“建筑一秘\”将调查、干预此类破坏行为的发生，并将与执法当局合作，起诉此类破坏行为的使用者。\
    九、风险分担\
    9.1 用户理解并同意，“建筑一秘”在本合同项下的义务是为用户提供信息，用户有义务自行甄别相关的真实性与对应性，“建筑一秘”不对用户使用本系统产生的纠纷负责。\
    9.2 如“建筑一秘”受到用户应为“建筑一秘”辩护并使“建筑一秘”免于任何经济或商誉损失，如用户怠于履行该义务，“建筑一秘”有权自行采取辩护措施（包括但不限于聘请律师），由此所发生的一切费用及损失，应由用户向“建筑一秘”作出补偿。\
    9.3 “建筑一秘”须承诺为用户提供本协议所规定的服务，承诺赔偿由于“建筑一秘”违反本协议而对用户造成的损失。\
    9.4 由于Internet发展的现状，有时线路速度会降低；有时因为网络调整会造成短时的线路中断，用户认同这些属正常情况。但中断时间以每月累计不超过（含）4小时为限（不可抗力除外）。\
    十、责任\
    10.1 “建筑一秘”随时监视此系统，并保留对其实施实时监视的权利。对于他方输入的，不是“建筑一秘”发布的材料，“建筑一秘”有权予以删除。\
    10.2 “建筑一秘”不承诺软件能够长期无错误运营；不保证其服务器免受病毒或其他机械故障的侵扰。如果任何用户在使用“建筑一秘”软件时造成需要维修、更换设备或丢失数据的情况，本软件对这些损失不承担任何责任。\
    10.3 “建筑一秘”因正常的系统维护、系统升级，或者因网络拥塞而导致软件不能访问，“建筑一秘”不承担任何责任。\
    10.4 在任何情况下，“建筑一秘”及其领导人、主管、雇员和代理商拒绝对由于用户使用本软件及其内容或不能使用本软件而造成的一切损失提供任何担保。\
    10.5 除非法律另有规定，“建筑一秘”在本合同项下承担的责任（不论是违约还是侵权），仅以“建筑一秘”向该用户所收取的服务费为限，并且“建筑一秘”不承担任何用户的任何期得利益损失或其他间接损失。\
    10.6 建筑一秘提供的服务中可能包括广告，用户同意在使用过程中显示建筑一秘和第三方供应商、合作伙伴提供的广告，广告内容均由内容提供者负责。用户可通过广告了解相关产品或服务，但须自行对依该广告信息进行的交易负责，对用户因该广告信息进行的交易或广告商提供的内容而遭受的损失或损害，建筑一秘不承担任何责任。\
    十一、合作事项\
    11.1 “建筑一秘”可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与“建筑一秘”同等的保护用户隐私的责任，则“建筑一秘”可将用户的注册资料等提供给该第三方。\
    11.2 在不透露单个用户隐私资料的前提下，“建筑一秘”有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。\
    十二、免责声明\
    12.1 用户明确同意其使用“建筑一秘”网络服务所存在的风险将完全由其自己承担；因其使用“建筑一秘”网络服务而产生的一切后果也由其自己承担，“建筑一秘”对用户不承担任何责任。\
    12.2 “建筑一秘”不担保网络服务一定能满足用户的要求，也不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。\
    十三、服务变更、中断或终止\
    13.1 如因系统维护或升级的需要而需暂停网络服务，“建筑一秘”将尽可能事先进行通告。\
    13.2 如发生下列任何一种情形，“建筑一秘”有权随时中断或终止向用户提供本协议项下的网络服务而无需通知用户：\
    13.2.1用户提供的个人资料不真实；\
    13.2.2用户违反本协议中规定的使用规则。\
    13.3 除前款所述情形外，“建筑一秘”同时保留在不事先通知用户的情况下随时中断或终止部分或全部网络服务的权利，对于所有服务的中断或终止而造成的任何损失，“建筑一秘”无需对用户或任何第三方承担任何责任。\
    十四、违约赔偿\
    用户同意保障和维护“建筑一秘”及其他用户的利益，如因用户违反有关法律、法规或本协议项下的任何条款而给“建筑一秘”或任何其他第三人造成损失，用户同意承担由此造成的损害赔偿责任。\
    十五、修改协议\
    15.1“建筑一秘”将可能不时地修改本协议的有关条款，一旦条款内容发生变动，“建筑一秘”将会在相关的页面提示修改内容。\
    15.2 如果不同意“建筑一秘”对服务条款所做的修改，用户有权停止使用网络服务。如果用户继续使用网络服务，则视为用户接受服务条款的变动。\
    十六、法律管辖\
    16.1 本协议的订立、执行和解释及争议的解决均应适用中国法律。\
    16.2 如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向“河南国悦建设管理有限公司”所在地的人民法院提起诉讼。\
    十七、通知和送达\
    本协议项下所有的通知均可通过重要页面公告、电子邮件或常规的信件传送等方式进行；该等通知于发送之日视为已送达收件人。\
    十八、其他规定\
    18.1 本协议构成双方对本协议之约定事项及其他有关事宜的完整协议，除本协议规定的之外，未赋予本协议各方其他权利。\
    18.2 如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。\
    18.3 本协议服从中华人民共和国法律解释；用户与建筑一秘双方都必须遵守中华人民共和国的司法管辖。如发生本协议相关条款与中华人民共和国法律相抵触时，则该条款将按相关法律重新解释，而其他条款则依旧保持对用户产生法律效力和影响。\
";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end