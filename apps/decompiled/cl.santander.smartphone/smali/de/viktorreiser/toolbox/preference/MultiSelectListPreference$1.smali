.class Lde/viktorreiser/toolbox/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "val"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;

    # getter for: Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z
    invoke-static {v0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->access$0(Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 128
    return-void
.end method
