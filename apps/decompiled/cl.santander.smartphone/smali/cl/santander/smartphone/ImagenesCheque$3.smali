.class Lcl/santander/smartphone/ImagenesCheque$3;
.super Ljava/lang/Object;
.source "ImagenesCheque.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ImagenesCheque;->verCheques()V
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
    iput-object p1, p0, Lcl/santander/smartphone/ImagenesCheque$3;->this$0:Lcl/santander/smartphone/ImagenesCheque;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque$3;->this$0:Lcl/santander/smartphone/ImagenesCheque;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/ImagenesCheque;->setResult(I)V

    .line 200
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque$3;->this$0:Lcl/santander/smartphone/ImagenesCheque;

    invoke-virtual {v0}, Lcl/santander/smartphone/ImagenesCheque;->finish()V

    .line 201
    return-void
.end method
