.class final Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    return-void
.end method
