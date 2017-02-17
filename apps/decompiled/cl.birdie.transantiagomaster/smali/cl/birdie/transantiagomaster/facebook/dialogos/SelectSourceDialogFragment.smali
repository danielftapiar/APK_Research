.class public final Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "SelectSourceDialogFragment.java"


# static fields
.field static main:Lcl/birdie/transantiagomaster/facebook/IUploadPhoto;


# instance fields
.field CancelarListener:Landroid/view/View$OnClickListener;

.field SourceCameraListener:Landroid/view/View$OnClickListener;

.field SourceGalleryListener:Landroid/view/View$OnClickListener;

.field btnCancelar:Landroid/widget/Button;

.field btnSourceCamera:Landroid/widget/Button;

.field btnSourceGallery:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 39
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$1;-><init>(Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->SourceGalleryListener:Landroid/view/View$OnClickListener;

    .line 49
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$2;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$2;-><init>(Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->SourceCameraListener:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$3;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment$3;-><init>(Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->CancelarListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method public static setTarget(Lcl/birdie/transantiagomaster/facebook/IUploadPhoto;)V
    .locals 0
    .param p0, "target"    # Lcl/birdie/transantiagomaster/facebook/IUploadPhoto;

    .prologue
    .line 31
    sput-object p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->main:Lcl/birdie/transantiagomaster/facebook/IUploadPhoto;

    .line 32
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->setCancelable(Z)V

    .line 74
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const v1, 0x7f03005a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->btnSourceGallery:Landroid/widget/Button;

    .line 82
    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->btnSourceCamera:Landroid/widget/Button;

    .line 83
    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->btnCancelar:Landroid/widget/Button;

    .line 85
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->btnSourceGallery:Landroid/widget/Button;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->SourceGalleryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->btnSourceCamera:Landroid/widget/Button;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->SourceCameraListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->btnCancelar:Landroid/widget/Button;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/dialogos/SelectSourceDialogFragment;->CancelarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-object v0
.end method
