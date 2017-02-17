.class Lcl/santander/smartphone/localizador/Mapa$3;
.super Landroid/os/Handler;
.source "Mapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Mapa;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Mapa;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Mapa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Mapa$3;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    .line 179
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 184
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa$3;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/localizador/Mapa;->verDetalle(I)V

    .line 193
    :cond_0
    return-void
.end method
