.class final Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$3;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$3;->this$1:Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;

    .line 1944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1949
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const/4 v1, 0x2

    iput v1, v0, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    .line 1951
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 1952
    return-void
.end method
