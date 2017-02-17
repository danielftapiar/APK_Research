.class public final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;
.super Ljava/lang/Object;
.source "ComplainDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComplainDialogParams"
.end annotation


# instance fields
.field comentario:Ljava/lang/String;

.field motivo:I

.field urlFoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "com"    # Ljava/lang/String;
    .param p2, "mot"    # I
    .param p3, "foto"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;->comentario:Ljava/lang/String;

    .line 384
    iput p2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;->motivo:I

    .line 385
    iput-object p3, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;->urlFoto:Ljava/lang/String;

    .line 386
    return-void
.end method
