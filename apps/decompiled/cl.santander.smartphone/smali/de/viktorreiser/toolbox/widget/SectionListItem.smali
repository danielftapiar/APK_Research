.class public Lde/viktorreiser/toolbox/widget/SectionListItem;
.super Ljava/lang/Object;
.source "SectionListItem.java"


# instance fields
.field public day:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public money:Ljava/lang/String;

.field public payee_sub:Ljava/lang/String;

.field public section:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "money"    # Ljava/lang/String;
    .param p3, "day"    # Ljava/lang/String;
    .param p4, "section"    # Ljava/lang/String;
    .param p5, "payee_sub"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->day:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->title:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->money:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->section:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->payee_sub:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "money"    # Ljava/lang/String;
    .param p4, "day"    # Ljava/lang/String;
    .param p5, "section"    # Ljava/lang/String;
    .param p6, "year"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p4, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->day:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->title:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->money:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->section:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->year:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->description:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->day:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SectionListItem;->money:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
