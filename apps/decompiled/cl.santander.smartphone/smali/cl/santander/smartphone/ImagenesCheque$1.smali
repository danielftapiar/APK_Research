.class Lcl/santander/smartphone/ImagenesCheque$1;
.super Ljava/lang/Object;
.source "ImagenesCheque.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ImagenesCheque;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/ImagenesCheque;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/ImagenesCheque;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/ImagenesCheque$1;->this$0:Lcl/santander/smartphone/ImagenesCheque;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque$1;->this$0:Lcl/santander/smartphone/ImagenesCheque;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/ImagenesCheque;->setResult(I)V

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque$1;->this$0:Lcl/santander/smartphone/ImagenesCheque;

    invoke-virtual {v0}, Lcl/santander/smartphone/ImagenesCheque;->finish()V

    .line 109
    return-void
.end method
