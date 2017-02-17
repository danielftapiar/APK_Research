.class Lcl/santander/smartphone/TransferSupergirosConfirm$3;
.super Ljava/lang/Object;
.source "TransferSupergirosConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferSupergirosConfirm;->supergiroVerificar()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$3;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm$3;->this$0:Lcl/santander/smartphone/TransferSupergirosConfirm;

    # invokes: Lcl/santander/smartphone/TransferSupergirosConfirm;->desafioSuperGiro()V
    invoke-static {v0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->access$3(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    .line 282
    return-void
.end method
