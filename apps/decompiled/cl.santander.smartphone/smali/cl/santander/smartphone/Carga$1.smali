.class Lcl/santander/smartphone/Carga$1;
.super Landroid/os/Handler;
.source "Carga.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/Carga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Carga;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Carga;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Carga$1;->this$0:Lcl/santander/smartphone/Carga;

    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget-object v0, p0, Lcl/santander/smartphone/Carga$1;->this$0:Lcl/santander/smartphone/Carga;

    # getter for: Lcl/santander/smartphone/Carga;->progreso:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcl/santander/smartphone/Carga;->access$0(Lcl/santander/smartphone/Carga;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 31
    return-void
.end method
