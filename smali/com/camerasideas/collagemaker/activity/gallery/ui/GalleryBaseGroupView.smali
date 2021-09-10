.class public abstract Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/gallery/ui/b;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;
.implements Lwm$d;


# instance fields
.field protected b:I

.field protected c:Landroid/widget/GridView;

.field protected d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

.field protected e:Z

.field protected f:Lxm;

.field protected g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

.field protected h:Lcn;

.field protected i:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lrm;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->e:Z

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->e:Z

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0}, Lxm;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v2}, Lxm;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->i:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->q(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/util/TreeMap;)V
    .locals 0
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

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Lcn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h:Lcn;

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->n:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->t(Z)V

    :cond_2
    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l()V

    .line 3
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->b:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-static {p1}, Landroidx/core/app/b;->Z(Landroid/content/Context;)I

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    sget-boolean v1, Lql$a;->h:Z

    .line 7
    new-instance v1, Lcn;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h:Lcn;

    const v1, 0x7f010022

    .line 8
    :try_start_0
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->m:Landroid/view/animation/Animation;

    const v1, 0x7f010025

    .line 9
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->n:Landroid/view/animation/Animation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j(Landroid/view/View;)V

    return-void
.end method

.method public h(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    invoke-static {v0}, Luq;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected abstract j(Landroid/view/View;)V
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-static {}, Len;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Len;->e()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->b(Ljava/util/TreeMap;)V

    .line 3
    :cond_0
    invoke-static {p0}, Len;->a(Lwm$d;)Len;

    move-result-object v0

    invoke-virtual {v0, p0}, Len;->h(Lwm$d;)V

    .line 4
    invoke-static {p0}, Len;->a(Lwm$d;)Len;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Len;->i(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h:Lcn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn;->d(Z)V

    return-void
.end method

.method protected abstract l()V
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->e:Z

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f:Lxm;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lxm;->j(I)V

    :cond_0
    return-void
.end method

.method public o(Lrm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->m:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->g:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->g(Ljava/util/Set;)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->l:Lrm;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 7
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->t(Z)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected q(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
