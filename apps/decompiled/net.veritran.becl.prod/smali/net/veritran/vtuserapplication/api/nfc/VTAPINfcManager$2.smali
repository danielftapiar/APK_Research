.class final Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->nfcActionExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->processAction(Ljava/lang/String;)V

    return-void
.end method
