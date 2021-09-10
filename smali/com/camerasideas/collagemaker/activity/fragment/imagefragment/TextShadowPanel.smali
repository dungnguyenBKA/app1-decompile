.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;
.super Lum;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;


# instance fields
.field private Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

.field private Z:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

.field private b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lun;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Ldm$d;

.field mIconShadowDegree:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIconShadowX:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIconShadowY:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIconTransparent:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarShadowAlpha:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarShadowDegree:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lum;-><init>()V

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->c0:Ldm$d;

    return-void
.end method

.method static synthetic o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    return-object p0
.end method

.method static synthetic p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->b0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    return-object p0
.end method

.method static synthetic r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lvm;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    instance-of p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontStylePanel;->u1()Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class p2, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;

    invoke-static {p1, p2}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance p2, Lun;

    invoke-direct {p2}, Lun;-><init>()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, v0}, Lun;->e(I)V

    const v1, 0x7f070106

    .line 10
    invoke-virtual {p2, v1}, Lun;->f(I)V

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p2, Lun;

    invoke-direct {p2}, Lun;-><init>()V

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p2, v1}, Lun;->e(I)V

    .line 14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->d:[Ljava/lang/String;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v2, :cond_2

    aget-object v5, p2, v3

    .line 16
    new-instance v6, Lun;

    invoke-direct {v6, v5, v4}, Lun;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_2
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 19
    new-instance v3, Lun;

    invoke-direct {v3, v2, v4}, Lun;-><init>(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_3
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    new-instance v3, Lun;

    invoke-direct {v3, v2, v4}, Lun;-><init>(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_4
    invoke-static {}, Lrn;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lon;

    .line 25
    instance-of v3, v2, Lqn;

    if-eqz v3, :cond_5

    .line 26
    check-cast v2, Lqn;

    .line 27
    new-instance v3, Lun;

    invoke-direct {v3}, Lun;-><init>()V

    const/4 v4, 0x3

    .line 28
    invoke-virtual {v3, v4}, Lun;->e(I)V

    .line 29
    invoke-virtual {v2}, Lpn;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Lun;->f(I)V

    .line 30
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_6
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->b0:Ljava/util/List;

    .line 32
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/t;

    iget-object v2, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p2, p1, v2}, Lcom/camerasideas/collagemaker/activity/adapter/t;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    .line 33
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Z:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 34
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/k;

    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v0, v2}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, v0, v1}, Lcom/camerasideas/collagemaker/activity/adapter/k;-><init>(IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 35
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 36
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 37
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->c0:Ldm$d;

    invoke-virtual {p1, p2}, Ldm;->e(Ldm$d;)Ldm;

    .line 38
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowAlpha:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 39
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowDegree:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 40
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 41
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 42
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q()F

    move-result p1

    .line 43
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowAlpha:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 44
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowDegree:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 45
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/16 p2, -0x32

    const/16 v0, 0x32

    invoke-virtual {p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 46
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 47
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->j(II)V

    .line 48
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 49
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->v1()V

    return-void
.end method

.method public d(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;IZ)V
    .locals 1

    if-eqz p3, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p3

    const v0, 0x7f080252

    if-ne p3, v0, :cond_2

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1

    const/high16 p2, 0x437f0000    # 255.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->u(F)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p3

    const v0, 0x7f080255

    if-ne p3, v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->v(I)V

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p3

    const v0, 0x7f080256

    if-ne p3, v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->y(I)V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    const p3, 0x7f080257

    if-ne p1, p3, :cond_5

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->z(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b005c

    return v0
.end method

.method protected n1()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    return-object v0
.end method

.method public p(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    return-void
.end method

.method public t(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    return-void
.end method

.method public u1(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowAlpha:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowDegree:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i(Z)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i(Z)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i(Z)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconTransparent:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v3, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowDegree:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v3, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowX:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v3, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mIconShadowY:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const v1, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public v1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowAlpha:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowDegree:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowX:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->mSeekBarShadowY:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/adapter/t;->B(I)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/adapter/t;->A()I

    move-result v1

    iget-object v2, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v2}, Lc2;->h(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextShadowPanel;->u1(Z)V

    return-void
.end method
