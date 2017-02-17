.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$5;
.super Ljava/lang/Object;
.source "SambaAutoComplete.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setupSmbFileComparator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljcifs/smb/SmbFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$5;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljcifs/smb/SmbFile;

    check-cast p2, Ljcifs/smb/SmbFile;

    invoke-virtual {p0, p1, p2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$5;->compare(Ljcifs/smb/SmbFile;Ljcifs/smb/SmbFile;)I

    move-result v0

    return v0
.end method

.method public compare(Ljcifs/smb/SmbFile;Ljcifs/smb/SmbFile;)I
    .locals 2
    .param p1, "f1"    # Ljcifs/smb/SmbFile;
    .param p2, "f2"    # Ljcifs/smb/SmbFile;

    .prologue
    .line 594
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$5;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$17(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    :try_start_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    .line 600
    :cond_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljcifs/smb/SmbFile;->isFile()Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    const/4 v0, -0x1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 607
    :cond_1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
