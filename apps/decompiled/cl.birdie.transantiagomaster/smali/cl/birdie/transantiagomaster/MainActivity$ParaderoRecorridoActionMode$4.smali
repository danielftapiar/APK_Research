.class final Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$4;->this$1:Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;

    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2023
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v1, 0x1

    iput v1, v0, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    .line 2025
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 2026
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$4;->this$1:Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->access$1(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)Lcl/birdie/transantiagomaster/MainActivity;

    move-result-object v0

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 2027
    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v1

    .line 2026
    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->doFavoriteLine(Ljava/lang/String;)V

    .line 2028
    return-void
.end method
