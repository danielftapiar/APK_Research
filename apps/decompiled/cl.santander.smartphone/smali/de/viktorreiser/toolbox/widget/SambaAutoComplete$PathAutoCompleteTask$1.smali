.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask$1;
.super Ljava/lang/Object;
.source "SambaAutoComplete.java"

# interfaces
.implements Ljcifs/smb/SmbFileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask$1;->this$1:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljcifs/smb/SmbFile;)Z
    .locals 1
    .param p1, "file"    # Ljcifs/smb/SmbFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask$1;->this$1:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmShowFiles:Z
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->access$2(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
