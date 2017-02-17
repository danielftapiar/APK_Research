.class public Lde/viktorreiser/toolbox/widget/SectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/ListAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final currentViewSections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSetObserver:Landroid/database/DataSetObserver;

.field protected final inflater:Landroid/view/LayoutInflater;

.field private final itemPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final linkedAdapter:Landroid/widget/ListAdapter;

.field private linkedListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final sectionPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transparentSectionView:Landroid/view/View;

.field private viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "linkedAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Lde/viktorreiser/toolbox/widget/SectionListAdapter$1;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter$1;-><init>(Lde/viktorreiser/toolbox/widget/SectionListAdapter;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->itemPositions:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->currentViewSections:Ljava/util/Map;

    .line 52
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    .line 53
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 54
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 55
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->updateSessionCache()V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/SectionListAdapter;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->updateSessionCache()V

    return-void
.end method

.method private getSectionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "section"    # Ljava/lang/String;

    .prologue
    .line 138
    move-object v0, p1

    .line 139
    .local v0, "theView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->createNewSectionView()Landroid/view/View;

    move-result-object v0

    .line 142
    :cond_0
    invoke-virtual {p0, p2, v0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->setSectionText(Ljava/lang/String;Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, p2, v0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->replaceSectionViewsInMaps(Ljava/lang/String;Landroid/view/View;)V

    .line 144
    return-object v0
.end method

.method private isTheSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "previousSection"    # Ljava/lang/String;
    .param p2, "newSection"    # Ljava/lang/String;

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 61
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized updateSessionCache()V
    .locals 8

    .prologue
    .line 68
    monitor-enter p0

    const/4 v1, 0x0

    .line 69
    .local v1, "currentPosition":I
    :try_start_0
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 70
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->itemPositions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 71
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->viewTypeCount:I

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "currentSection":Ljava/lang/String;
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 74
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 85
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    .line 76
    invoke-interface {v5, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 75
    check-cast v4, Lde/viktorreiser/toolbox/widget/SectionListItem;

    .line 77
    .local v4, "item":Lde/viktorreiser/toolbox/widget/SectionListItem;
    iget-object v5, v4, Lde/viktorreiser/toolbox/widget/SectionListItem;->section:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v4, Lde/viktorreiser/toolbox/widget/SectionListItem;->section:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v2, v4, Lde/viktorreiser/toolbox/widget/SectionListItem;->section:Ljava/lang/String;

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 82
    :cond_1
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->itemPositions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "count":I
    .end local v2    # "currentSection":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "item":Lde/viktorreiser/toolbox/widget/SectionListItem;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method protected createNewSectionView()Landroid/view/View;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lde/viktorreiser/toolbox/R$layout;->section_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->itemPositions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 98
    :goto_0
    monitor-exit p0

    return-object v1

    .line 97
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    .local v0, "linkedItemPosition":I
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 94
    .end local v0    # "linkedItemPosition":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 119
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->viewTypeCount:I

    add-int/lit8 v0, v0, -0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLinkedPosition(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->itemPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public declared-synchronized getSectionName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransparentSectionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->transparentSectionView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->createNewSectionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->transparentSectionView:Landroid/view/View;

    .line 240
    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->transparentSectionView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getSectionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->viewTypeCount:I

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized isSection(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public makeSectionInvisibleIfFirstInList(I)V
    .locals 7
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "section":Ljava/lang/String;
    const/4 v0, 0x0

    .line 218
    .local v0, "alreadySetFirstSectionIvisible":Z
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->currentViewSections:Ljava/util/Map;

    .line 219
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 218
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 228
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionPositions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 234
    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    .local v2, "itemView":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    if-nez v0, :cond_2

    .line 222
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 223
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    .end local v2    # "itemView":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v6, p1, 0x1

    if-gt v4, v6, :cond_0

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getTransparentSectionView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->setSectionText(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0, p3}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->sectionClicked(Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 254
    invoke-virtual {p0, p3}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->getLinkedPosition(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 253
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 192
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 193
    return-void
.end method

.method protected declared-synchronized replaceSectionViewsInMaps(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "theView"    # Landroid/view/View;

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->currentViewSections:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->currentViewSections:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->currentViewSections:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sectionClicked(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 245
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 259
    .local p1, "linkedListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 260
    return-void
.end method

.method protected setSectionText(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "sectionView"    # Landroid/view/View;

    .prologue
    .line 148
    .line 149
    sget v1, Lde/viktorreiser/toolbox/R$id;->listTextView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 197
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->linkedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 198
    return-void
.end method
