.class final Lnet/veritran/vtuserapplication/processes/ProcessVTService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/processes/ProcessVTService;->processBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lnet/veritran/vtuserapplication/processes/ProcessVTService;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService$1;->a:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/processes/ProcessVTService$1;->a:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    iget-object v1, v1, Lnet/veritran/vtuserapplication/processes/ProcessVTService;->func:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->getAsyncNext()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->processAction(Ljava/lang/String;)V

    return-void
.end method
