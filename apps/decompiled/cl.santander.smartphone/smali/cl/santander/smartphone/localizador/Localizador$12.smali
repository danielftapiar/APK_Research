.class Lcl/santander/smartphone/localizador/Localizador$12;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->makeGPSalert()V
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
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$12;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$12;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->isLocationAvailable()I
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$0(Lcl/santander/smartphone/localizador/Localizador;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$12;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->localizaAutomaticamente()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$1(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 597
    :cond_0
    return-void
.end method
