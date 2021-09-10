.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;
.super Lum;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;


# instance fields
.field private Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

.field private Z:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

.field private b0:I

.field private c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lun;",
            ">;"
        }
    .end annotation
.end field

.field private d0:Ldm$d;

.field mImageView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lum;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->b0:I

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->d0:Ldm$d;

    return-void
.end method

.method static synthetic o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/adapter/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    return-object p0
.end method

.method static synthetic p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->c0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    return-object p0
.end method

.method static synthetic r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->U:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->b0:I

    return p0
.end method

.method static synthetic u1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic v1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->w1(Z)V

    return-void
.end method

.method private w1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->i(Z)V

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mImageView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3ecccccd    # 0.4f

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

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

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const-string p2, "text_style"

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->b0:I

    .line 10
    :cond_2
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->b0:I

    const p2, 0x7f070164

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_8

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    sget-object v4, Lcom/camerasideas/collagemaker/appdata/b;->d:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 13
    new-instance v8, Lun;

    invoke-direct {v8, v7, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_3
    sget-object v4, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    new-instance v6, Lun;

    invoke-direct {v6, v5, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_4
    sget-object v4, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 19
    new-instance v6, Lun;

    invoke-direct {v6, v5, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_5
    invoke-static {}, Lrn;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lon;

    .line 22
    instance-of v5, v4, Lqn;

    if-eqz v5, :cond_6

    .line 23
    check-cast v4, Lqn;

    .line 24
    new-instance v5, Lun;

    invoke-direct {v5}, Lun;-><init>()V

    .line 25
    invoke-virtual {v5, v1}, Lun;->e(I)V

    .line 26
    invoke-virtual {v4}, Lpn;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Lun;->f(I)V

    .line 27
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_7
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->c0:Ljava/util/List;

    .line 29
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x()F

    move-result p1

    .line 30
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 31
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto/16 :goto_c

    :cond_8
    const v4, 0x7f070106

    if-ne p1, v2, :cond_e

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance p2, Lun;

    invoke-direct {p2}, Lun;-><init>()V

    .line 34
    invoke-virtual {p2, v3}, Lun;->e(I)V

    .line 35
    invoke-virtual {p2, v4}, Lun;->f(I)V

    .line 36
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance p2, Lun;

    invoke-direct {p2}, Lun;-><init>()V

    .line 38
    invoke-virtual {p2, v0}, Lun;->e(I)V

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->d:[Ljava/lang/String;

    array-length v4, p2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_9

    aget-object v6, p2, v5

    .line 41
    new-instance v7, Lun;

    invoke-direct {v7, v6, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 43
    :cond_9
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    new-instance v5, Lun;

    invoke-direct {v5, v4, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 46
    :cond_a
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    new-instance v5, Lun;

    invoke-direct {v5, v4, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 49
    :cond_b
    invoke-static {}, Lrn;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lon;

    .line 50
    instance-of v4, v2, Lqn;

    if-eqz v4, :cond_c

    .line 51
    check-cast v2, Lqn;

    .line 52
    new-instance v4, Lun;

    invoke-direct {v4}, Lun;-><init>()V

    .line 53
    invoke-virtual {v4, v1}, Lun;->e(I)V

    .line 54
    invoke-virtual {v2}, Lpn;->a()I

    move-result v2

    invoke-virtual {v4, v2}, Lun;->f(I)V

    .line 55
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 56
    :cond_d
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->c0:Ljava/util/List;

    .line 57
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 58
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f070157

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto/16 :goto_c

    :cond_e
    if-ne p1, v1, :cond_14

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v5, Lun;

    invoke-direct {v5}, Lun;-><init>()V

    .line 61
    invoke-virtual {v5, v3}, Lun;->e(I)V

    .line 62
    invoke-virtual {v5, v4}, Lun;->f(I)V

    .line 63
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v4, Lun;

    invoke-direct {v4}, Lun;-><init>()V

    .line 65
    invoke-virtual {v4, v0}, Lun;->e(I)V

    .line 66
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v4, Lcom/camerasideas/collagemaker/appdata/b;->d:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_f

    aget-object v7, v4, v6

    .line 68
    new-instance v8, Lun;

    invoke-direct {v8, v7, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 70
    :cond_f
    sget-object v4, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 71
    new-instance v6, Lun;

    invoke-direct {v6, v5, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 73
    :cond_10
    sget-object v4, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    new-instance v6, Lun;

    invoke-direct {v6, v5, v2}, Lun;-><init>(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 76
    :cond_11
    invoke-static {}, Lrn;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lon;

    .line 77
    instance-of v5, v4, Lqn;

    if-eqz v5, :cond_12

    .line 78
    check-cast v4, Lqn;

    .line 79
    new-instance v5, Lun;

    invoke-direct {v5}, Lun;-><init>()V

    .line 80
    invoke-virtual {v5, v1}, Lun;->e(I)V

    .line 81
    invoke-virtual {v4}, Lpn;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Lun;->f(I)V

    .line 82
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 83
    :cond_13
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->c0:Ljava/util/List;

    .line 84
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 85
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 86
    :cond_14
    :goto_c
    new-instance p1, Lcom/camerasideas/collagemaker/activity/adapter/t;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->c0:Ljava/util/List;

    iget-object v1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, p2, v1}, Lcom/camerasideas/collagemaker/activity/adapter/t;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    .line 87
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Z:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 88
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/k;

    iget-object v1, p0, Ltm;->U:Landroid/content/Context;

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v1, v2}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p2, v1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/k;-><init>(IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 89
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 90
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 91
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->x1()V

    .line 92
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->k(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;)V

    .line 93
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->d0:Ldm$d;

    invoke-virtual {p1, p2}, Ldm;->e(Ldm$d;)Ldm;

    return-void
.end method

.method public d(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;IZ)V
    .locals 2

    if-eqz p3, :cond_3

    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float p3, p1, p3

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->b0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->B(F)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne v0, p3, :cond_2

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne v0, p2, :cond_3

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l(F)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b0059

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

.method public x1()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->b0:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->y()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v3

    :goto_0
    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/activity/adapter/t;->B(I)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 4
    invoke-direct {p0, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->w1(Z)V

    goto/16 :goto_3

    :cond_1
    if-ne v0, v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/adapter/t;->B(I)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->w1(Z)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g()I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/adapter/t;->B(I)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->mSeekBar:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->l(I)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Y:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->w1(Z)V

    .line 11
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->Z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextColorPanel;->a0:Lcom/camerasideas/collagemaker/activity/adapter/t;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/adapter/t;->A()I

    move-result v2

    iget-object v3, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {v3}, Lc2;->h(Landroid/content/Context;)I

    move-result v3

    div-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(II)V

    return-void
.end method
