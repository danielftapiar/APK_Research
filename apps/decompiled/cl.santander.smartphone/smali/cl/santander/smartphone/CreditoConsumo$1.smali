.class Lcl/santander/smartphone/CreditoConsumo$1;
.super Ljava/lang/Object;
.source "CreditoConsumo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/CreditoConsumo;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/CreditoConsumo;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/CreditoConsumo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/CreditoConsumo$1;->this$0:Lcl/santander/smartphone/CreditoConsumo;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo$1;->this$0:Lcl/santander/smartphone/CreditoConsumo;

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo$1;->this$0:Lcl/santander/smartphone/CreditoConsumo;

    # invokes: Lcl/santander/smartphone/CreditoConsumo;->nextStep()I
    invoke-static {v1}, Lcl/santander/smartphone/CreditoConsumo;->access$0(Lcl/santander/smartphone/CreditoConsumo;)I

    move-result v1

    # invokes: Lcl/santander/smartphone/CreditoConsumo;->setStep(I)V
    invoke-static {v0, v1}, Lcl/santander/smartphone/CreditoConsumo;->access$1(Lcl/santander/smartphone/CreditoConsumo;I)V

    .line 86
    return-void
.end method
