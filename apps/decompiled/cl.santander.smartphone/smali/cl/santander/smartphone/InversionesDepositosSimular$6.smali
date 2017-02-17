.class Lcl/santander/smartphone/InversionesDepositosSimular$6;
.super Ljava/lang/Object;
.source "InversionesDepositosSimular.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosSimular;->Solicitar()V
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
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosSimular$6;->this$0:Lcl/santander/smartphone/InversionesDepositosSimular;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular$6;->this$0:Lcl/santander/smartphone/InversionesDepositosSimular;

    # invokes: Lcl/santander/smartphone/InversionesDepositosSimular;->Invertir()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosSimular;->access$1(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    .line 246
    return-void
.end method
