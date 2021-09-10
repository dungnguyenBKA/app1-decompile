.class public Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lbn;

.field private e:Lcom/camerasideas/collagemaker/activity/gallery/ui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b007d

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const p1, 0x7f08012b

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->b:Landroid/widget/ListView;

    const p1, 0x7f08012a

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->c:Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->b:Landroid/widget/ListView;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/gallery/ui/a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/a;-><init>(Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/16 p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->e:Lcom/camerasideas/collagemaker/activity/gallery/ui/b;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->d:Lbn;

    invoke-virtual {p1, p3}, Lbn;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->e:Lcom/camerasideas/collagemaker/activity/gallery/ui/b;

    invoke-interface {p2, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->e:Lcom/camerasideas/collagemaker/activity/gallery/ui/b;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;

    .line 7
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 8
    check-cast p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->t(Z)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/TreeMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/Google Photos"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    new-instance v3, Lan;

    invoke-direct {v3}, Lan;-><init>()V

    .line 6
    invoke-virtual {v3, v2}, Lan;->f(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    .line 10
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 11
    new-instance v5, Lan;

    invoke-direct {v5}, Lan;-><init>()V

    .line 12
    invoke-virtual {v4}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lan;->e(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, v2}, Lan;->f(Ljava/lang/String;)V

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Lan;->g(I)V

    .line 15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->d:Lbn;

    invoke-virtual {p1, v1}, Lbn;->b(Ljava/util/List;)V

    return-void
.end method

.method public e(Lcn;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lbn;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lbn;-><init>(Landroid/content/Context;Lcn;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->d:Lbn;

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->b:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/camerasideas/collagemaker/activity/gallery/ui/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->e:Lcom/camerasideas/collagemaker/activity/gallery/ui/b;

    return-void
.end method

.method public g(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->d:Lbn;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0, p1}, Lbn;->c(Ljava/util/Set;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->d:Lbn;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
