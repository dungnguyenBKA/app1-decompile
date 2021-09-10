.class public Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;
.super Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;
.source "SourceFile"

# interfaces
.implements Lxm$a;


# instance fields
.field private o:Z

.field private p:I

.field private q:Landroid/widget/FrameLayout;

.field private r:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private r(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "/Recent"

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_3

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->c(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->q:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Luq;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->p:I

    return-void
.end method

.method public C(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    .line 7
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-gez v1, :cond_2

    .line 12
    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 15
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    :goto_1
    const-string v1, "/Recent"

    .line 16
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 18
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->o:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0}, Lxm;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v1}, Lxm;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "/Google Photos"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-eqz v0, :cond_2

    .line 7
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RecentPhotoFolder"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->i:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->q(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/util/TreeMap;)V
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

    const-string v0, "MultiSelectGalleryGroupView"

    const-string v1, "onScannedMediaResult"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->i:Ljava/util/TreeMap;

    const-string v1, "Insert a path:"

    .line 3
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 9
    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)V

    .line 10
    sget-object v2, Ldq;->e:Ljava/lang/String;

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/Recent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-virtual {v4}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbm;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {p1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 14
    new-instance v4, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-direct {v4, v5}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;-><init>(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v4, v5}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    if-eqz v3, :cond_1

    .line 16
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Insert a MediaFileInfo"

    .line 17
    invoke-static {v0, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 18
    invoke-interface {v3, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->d(Ljava/util/TreeMap;)V

    .line 20
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    invoke-virtual {v0, p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->f(Lcom/camerasideas/collagemaker/activity/gallery/ui/b;)V

    .line 21
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RecentPhotoFolder"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 25
    :cond_4
    invoke-virtual {p1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    :cond_5
    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->q(Ljava/lang/String;Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method protected j(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f080204

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->q:Landroid/widget/FrameLayout;

    const v0, 0x7f0801ff

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->r:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    const v0, 0x7f080143

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    const v0, 0x7f0801b0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h:Lcn;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->e(Lcn;)V

    .line 6
    new-instance v0, Lym;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lym;-><init>(Landroid/content/Context;Lxm$a;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080131

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected l()V
    .locals 1

    const v0, 0x7f0b0061

    .line 1
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->b:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->o:Z

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p1, p3}, Lxm;->e(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    const/16 p5, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lxm;->d()I

    move-result p4

    and-int/2addr p4, p5

    if-ne p4, p5, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_4

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->v()I

    move-result p4

    add-int/2addr p4, v0

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->p:I

    if-lt p4, v2, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e003c

    new-array p3, v1, [Ljava/lang/Object;

    iget p4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->p:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x43210000    # 161.0f

    invoke-static {p2, p3}, Lc2;->b(Landroid/content/Context;F)I

    .line 7
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->a()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 9
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->f()I

    move-result p1

    check-cast p2, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->y(I)V

    return-void

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p1}, Lxm;->d()I

    move-result p1

    and-int/2addr p1, p5

    if-ne p1, p5, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    return-void

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p1, p3}, Lxm;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 12
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->o:Z

    if-nez p4, :cond_17

    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-nez p4, :cond_8

    goto/16 :goto_7

    .line 13
    :cond_8
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p4}, Lxm;->f()Ljava/lang/String;

    move-result-object p4

    .line 14
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayPictureWhenClickItem photoRootName = "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v2, "MultiSelectGalleryGroupView"

    invoke-static {v2, p5}, Lem;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p5, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p5, p3}, Lxm;->a(I)I

    move-result p5

    .line 16
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    check-cast v2, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->d()Z

    move-result v2

    if-eqz p2, :cond_e

    const v3, 0x7f080139

    .line 19
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    const v4, 0x7f08013b

    .line 20
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f080138

    .line 21
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v5, 0x7f0700cb

    .line 22
    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v6}, Lxm;->d()I

    move-result v6

    invoke-static {v6}, Landroidx/core/app/b;->y(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const v5, 0x7f0700dd

    :cond_9
    if-lez p5, :cond_a

    goto :goto_2

    :cond_a
    const v5, 0x7f050133

    :goto_2
    if-eqz v3, :cond_b

    .line 23
    invoke-virtual {v3, v5}, Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;->k(I)V

    .line 24
    :cond_b
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_c

    .line 25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 26
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_c
    invoke-static {v4, v0}, Luq;->t(Landroid/view/View;Z)V

    if-eqz v2, :cond_d

    if-lez p5, :cond_d

    const/4 p5, 0x1

    goto :goto_3

    :cond_d
    const/4 p5, 0x0

    .line 28
    :goto_3
    invoke-static {p2, p5}, Luq;->t(Landroid/view/View;Z)V

    .line 29
    new-instance p2, Lym$a;

    invoke-direct {p2, p0, p1, p3}, Lym$a;-><init>(Lxm$a;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V

    if-eqz v4, :cond_e

    .line 30
    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_e
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result p2

    if-nez p2, :cond_16

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result p2

    if-nez p2, :cond_16

    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->e:Z

    if-nez p2, :cond_f

    goto :goto_6

    .line 32
    :cond_f
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p2}, Lxm;->h()Ljava/util/List;

    move-result-object p2

    if-eqz p4, :cond_10

    .line 33
    iget-object p5, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {p5, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_10
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p2, p3}, Lxm;->g(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object p2

    const-string p5, "/Recent"

    .line 36
    invoke-static {p4, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 37
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    .line 38
    invoke-virtual {p4, p3}, Lxm;->g(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 39
    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result p3

    if-lez p3, :cond_11

    goto :goto_4

    :cond_11
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_12

    .line 40
    invoke-direct {p0, p2, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->r(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;Z)V

    goto :goto_5

    .line 41
    :cond_12
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->t(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    goto :goto_5

    .line 42
    :cond_13
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    .line 43
    invoke-virtual {p4, p3}, Lxm;->g(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 44
    invoke-virtual {p3}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result p3

    if-lez p3, :cond_14

    const/4 v0, 0x1

    :cond_14
    if-eqz v0, :cond_15

    .line 45
    invoke-direct {p0, p2, v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->r(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;Z)V

    goto :goto_5

    .line 46
    :cond_15
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->t(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    .line 47
    :goto_5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object p3

    check-cast p2, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {p2, p3, p1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->u(Ljava/util/ArrayList;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    goto :goto_7

    .line 48
    :cond_16
    :goto_6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    check-cast p2, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->x(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    :cond_17
    :goto_7
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->q:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->r:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0, p1, p2}, Lxm;->k(Ljava/lang/String;Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "/Recent"

    .line 6
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 10
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p2, v0}, Lxm;->l(Ljava/util/List;)V

    .line 13
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    if-eqz p2, :cond_5

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 16
    invoke-virtual {p2, v1, v1}, Landroid/widget/GridView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 18
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-eqz p2, :cond_6

    .line 19
    check-cast p2, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->w(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0}, Lxm;->b()V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public t(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 5
    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    if-eq p1, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v3, v2}, Lxm;->c(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    .line 9
    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    const-string v1, "/Recent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 18
    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->i()Z

    move-result v2

    if-nez v2, :cond_3

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->g(Ljava/util/Set;)V

    return-void
.end method

.method public u()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h:Lcn;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn;->a()V

    .line 3
    :cond_0
    invoke-static {p0}, Len;->a(Lwm$d;)Len;

    move-result-object v0

    invoke-virtual {v0}, Len;->f()V

    .line 4
    invoke-static {p0}, Len;->a(Lwm$d;)Len;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Len;->h(Lwm$d;)V

    .line 5
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f()V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h:Lcn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h:Lcn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn;->d(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f()V

    return-void
.end method

.method public y(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->z(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V

    .line 2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object v0

    check-cast p2, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {p2, v0, p1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->v(Ljava/util/ArrayList;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    :cond_0
    return-void
.end method

.method public z(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0, p1}, Lxm;->i(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    if-ltz v1, :cond_3

    .line 4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->c:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lxm$b;

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxm$b;

    .line 8
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v1, v0}, Lxm;->g(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 9
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->t(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, -0x1

    if-le p2, v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 14
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method
