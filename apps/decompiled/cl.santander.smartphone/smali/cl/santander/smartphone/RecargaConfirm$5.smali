.class Lcl/santander/smartphone/RecargaConfirm$5;
.super Ljava/lang/Object;
.source "RecargaConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/RecargaConfirm;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/RecargaConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/RecargaConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/RecargaConfirm$5;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm$5;->this$0:Lcl/santander/smartphone/RecargaConfirm;

    invoke-virtual {v0}, Lcl/santander/smartphone/RecargaConfirm;->desafioRecarga()V

    .line 320
    return-void
.end method
