.class Lcl/santander/smartphone/localizador/Localizador$1;
.super Landroid/os/Handler;
.source "Localizador.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/Localizador;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Localizador;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$1;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$1;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->isLocationAvailable()I
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$0(Lcl/santander/smartphone/localizador/Localizador;)I

    move-result v0

    .line 104
    .local v0, "locationAvailable":I
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$1;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->localizaAutomaticamente()V
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$1(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$1;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->makeGPSalert()V
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$2(Lcl/santander/smartphone/localizador/Localizador;)V

    goto :goto_0
.end method
