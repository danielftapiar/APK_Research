.class Lcl/santander/smartphone/localizador/Localizador$11;
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
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$11;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "gpsOptionsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$11;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcl/santander/smartphone/localizador/Localizador;->startActivityForResult(Landroid/content/Intent;I)V

    .line 579
    return-void
.end method
