.class Lcl/santander/smartphone/InversionesDepositosSimular$2;
.super Ljava/lang/Object;
.source "InversionesDepositosSimular.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosSimular;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosSimular;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosSimular$2;->this$0:Lcl/santander/smartphone/InversionesDepositosSimular;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular$2;->this$0:Lcl/santander/smartphone/InversionesDepositosSimular;

    # invokes: Lcl/santander/smartphone/InversionesDepositosSimular;->Invertir()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosSimular;->access$1(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    .line 156
    return-void
.end method
