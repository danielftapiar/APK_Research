.class final Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/api/hce/VTHCEListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lnet/veritran/vtuserapplication/model/Model;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;->a:Lnet/veritran/vtuserapplication/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hceFinish(I)V
    .locals 3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xf4

    invoke-static {p1}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;->a:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v1, 0x177

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v1

    new-instance v2, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2$1;

    invoke-direct {v2, p0, v0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2$1;-><init>(Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final provision(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResult;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;-><init>()V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;->a:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v2, 0x16d

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;->cardNumber:Ljava/lang/String;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;->a:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v2, 0x16e

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;->CVV:Ljava/lang/String;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;->a:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v2, 0x170

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;->cardExpirationDateMMYY:Ljava/lang/String;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$2;->a:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v2, 0x174

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;->availableTimeSeconds:I

    return-object v0
.end method
