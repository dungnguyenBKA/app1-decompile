.class public Lcom/camerasideas/collagemaker/activity/MainActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Lso;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/MainActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/BaseMvpActivity<",
        "Lso;",
        "Loo;",
        ">;",
        "Lso;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private e:Landroid/net/Uri;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field mBtnPro:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCardAdLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRootLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:J

.field private o:J

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lul;

.field private r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    .line 3
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->g:Z

    const/4 v1, 0x4

    .line 4
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->h:I

    .line 5
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->l:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->m:J

    .line 7
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->n:J

    .line 8
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->o:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->p:Ljava/util/List;

    return-void
.end method

.method private H()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->l:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Loo;

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    invoke-virtual {v0, p0, v1}, Loo;->q(Lcom/camerasideas/collagemaker/activity/BaseActivity;Z)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->g:Z

    if-ltz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    if-eqz v1, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->I()V

    .line 6
    :cond_3
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->l:Z

    :cond_4
    return-void
.end method

.method private I()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->j:Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-static {p0, v0}, Lhm;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->k:Z

    .line 3
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->j:Z

    .line 6
    invoke-static {p0}, Landroidx/core/app/b;->D0(Landroidx/appcompat/app/AppCompatActivity;)Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Lcom/camerasideas/collagemaker/activity/MainActivity$b;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/MainActivity$b;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p0}, Lhm;->c(Landroidx/appcompat/app/AppCompatActivity;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic s(Lcom/camerasideas/collagemaker/activity/MainActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->n:J

    return-wide v0
.end method

.method static synthetic t(Lcom/camerasideas/collagemaker/activity/MainActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->m:J

    return-wide v0
.end method

.method static synthetic u(Lcom/camerasideas/collagemaker/activity/MainActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->m:J

    return-wide p1
.end method

.method static synthetic v(Lcom/camerasideas/collagemaker/activity/MainActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Lcom/camerasideas/collagemaker/activity/MainActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->o:J

    return-wide v0
.end method

.method static synthetic x(Lcom/camerasideas/collagemaker/activity/MainActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->o:J

    return-wide p1
.end method

.method static synthetic y(Lcom/camerasideas/collagemaker/activity/MainActivity;)Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    return-object p0
.end method


# virtual methods
.method public synthetic A()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/b;->t1(Landroidx/fragment/app/g;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/appdata/f;->k(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic B(J)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-int p1, v0

    div-int/lit16 p1, p1, 0x3e8

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataMove_Feature_Time"

    invoke-static {p0, p2, p1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    if-eqz p1, :cond_0

    const/16 p2, 0x63

    .line 5
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;->y1(I)V

    :cond_0
    return-void
.end method

.method public synthetic C()V
    .locals 2

    const-string v0, "DataMoveSuccess"

    const-string v1, "Yes"

    .line 1
    invoke-static {p0, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/b;->m1()V

    .line 4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->H()V

    :cond_0
    return-void
.end method

.method public synthetic D()V
    .locals 2

    const-string v0, "DataMoveSuccess"

    const-string v1, "Yes"

    .line 1
    invoke-static {p0, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/b;->m1()V

    .line 4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->H()V

    :cond_0
    return-void
.end method

.method public synthetic E()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->H()V

    return-void
.end method

.method public synthetic F()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->H()V

    return-void
.end method

.method public synthetic G()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->m:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/camerasideas/collagemaker/appdata/b;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 7
    :goto_0
    array-length v7, v4

    if-ge v5, v7, :cond_1

    .line 8
    aget-object v7, v4, v5

    .line 9
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 11
    iget-object v9, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->p:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/camerasideas/collagemaker/activity/MainActivity;->z(Ljava/io/File;)V

    .line 13
    iget-wide v7, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->m:J

    iput-wide v7, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->n:J

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 15
    iget-wide v4, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->n:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    const-wide/32 v0, 0xa00000

    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    const-string v0, "< 10M"

    goto :goto_1

    :cond_2
    const-wide/32 v0, 0x3200000

    cmp-long v6, v4, v0

    if-gez v6, :cond_3

    const-string v0, "10 - 50M"

    goto :goto_1

    :cond_3
    const-wide/32 v0, 0x6400000

    cmp-long v6, v4, v0

    if-gez v6, :cond_4

    const-string v0, "50 - 100M"

    goto :goto_1

    :cond_4
    const-string v0, "> 100M"

    :goto_1
    const-string v1, "DataMove_Feature_Size"

    .line 16
    invoke-static {p0, v1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_5
    new-instance v0, Lcom/camerasideas/collagemaker/activity/e0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/e0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v4, "MainActivity"

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cb\u8fc1\u79fb\u6570\u636e\uff0c\u76ee\u5f55"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/camerasideas/collagemaker/appdata/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->q:Lul;

    invoke-static {v4, v1, v5}, Lbm;->a(Ljava/lang/String;Ljava/lang/String;Lul;)Z

    goto :goto_2

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    if-eqz v0, :cond_a

    .line 22
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;->w1(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;->u1()J

    move-result-wide v0

    const-wide/16 v5, 0xbb8

    cmp-long v7, v0, v5

    if-gez v7, :cond_7

    .line 24
    new-instance v0, Lcom/camerasideas/collagemaker/activity/a0;

    invoke-direct {v0, p0, v2, v3}, Lcom/camerasideas/collagemaker/activity/a0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;J)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mBtnPro:Landroid/view/View;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/g0;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/g0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    sub-long/2addr v5, v7

    .line 27
    invoke-virtual {v0, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 28
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    .line 29
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataMove_Feature_Time"

    invoke-static {p0, v1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fc1\u79fb\u6570\u636e\u603b\u8017\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/camerasideas/collagemaker/activity/c0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/c0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 32
    :cond_8
    invoke-static {p0, v6}, Lcom/camerasideas/collagemaker/appdata/f;->k(Landroid/content/Context;Z)V

    .line 33
    new-instance v0, Lcom/camerasideas/collagemaker/activity/d0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/d0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 34
    :cond_9
    invoke-static {p0, v6}, Lcom/camerasideas/collagemaker/appdata/f;->k(Landroid/content/Context;Z)V

    .line 35
    new-instance v0, Lcom/camerasideas/collagemaker/activity/b0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/b0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/z;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/z;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "MainActivity"

    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/i0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/i0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "onActivityResult start"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p0}, Lhm;->c(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Loo;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->h:I

    invoke-virtual {p1, p0, p2}, Loo;->r(Lcom/camerasideas/collagemaker/activity/BaseActivity;I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/app/b;->D(Landroidx/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mAppExitUtils:Lqq;

    .line 2
    invoke-virtual {v0, p0}, Lqq;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainActivity"

    const-string v1, "\u70b9\u51fb\u4e86\u8fd4\u56de\u952e"

    .line 3
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClickHome(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08008d

    const-string v1, "HomeClick"

    if-eq p1, v0, :cond_2

    const v0, 0x7f0800b7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0800bc

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Loo;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v0, Lcom/camerasideas/collagemaker/activity/SettingActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ImageMainPresenter"

    const-string v2, "SettingActivity occur exception"

    .line 7
    invoke-static {v0, v2, p1}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p1, "Setting"

    .line 8
    invoke-static {p0, v1, p1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p1, "Pro"

    .line 9
    invoke-static {p0, v1, p1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string p1, "PRO_FROM"

    const-string v0, "MainProIcon"

    .line 11
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    const v5, 0x7f080135

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {p0}, Lhm;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Loo;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->h:I

    invoke-virtual {p1, p0, v0}, Loo;->r(Lcom/camerasideas/collagemaker/activity/BaseActivity;I)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->I()V

    :goto_1
    const-string p1, "Create"

    .line 16
    invoke-static {p0, v1, p1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->s:Z

    const-string v2, "android:support:fragments"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->s:Z

    .line 4
    :goto_0
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c()V

    .line 6
    invoke-static {p0}, Landroidx/core/app/b;->r0(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainActivity"

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from share="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_KEY_FROM_SHARE_ACTIVITY"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f07006f

    .line 9
    :try_start_0
    invoke-static {p0}, Landroidx/core/app/b;->V(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {p0}, Landroidx/core/app/b;->U(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {p0, v2, v4, v6}, Lwq;->k(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 10
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mRootLayout:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 11
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 13
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->l:Z

    .line 15
    :cond_2
    invoke-static {p0}, Lhm;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Len;->a(Lwm$d;)Len;

    move-result-object p1

    const-string v2, "image/*"

    invoke-virtual {p1, v2}, Len;->i(Ljava/lang/String;)V

    .line 17
    :cond_3
    new-instance p1, Lcom/camerasideas/collagemaker/activity/MainActivity$c;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/MainActivity$c;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->i:Landroid/os/Handler;

    .line 18
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    :try_start_1
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    sget-object p1, Lcom/camerasideas/collagemaker/filter/a;->a:Ljava/util/List;

    const-string p1, "activity"

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 22
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    .line 23
    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v2, 0x20000

    if-lt p1, v2, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 24
    invoke-static {p0}, Lsq;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    invoke-static {p0}, Lsq;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Start GPU Test"

    .line 26
    invoke-static {v3, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance p1, Lcom/camerasideas/collagemaker/filter/c;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/filter/c;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 30
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mMainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "Start GPU Test2"

    .line 31
    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->i:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lcom/camerasideas/collagemaker/filter/c;->e(Landroid/os/Handler;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_5
    :goto_3
    sget-object p1, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    new-instance v2, Lcom/camerasideas/collagemaker/activity/j0;

    invoke-direct {v2, p0}, Lcom/camerasideas/collagemaker/activity/j0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p1, v2}, Linshot/collage/adconfig/h;->m(Linshot/collage/adconfig/h$c;)V

    .line 35
    sget-object p1, Lcom/camerasideas/collagemaker/appdata/b;->n:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/zjsoft/baseadlib/b;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string p1, "PV"

    const-string v2, "MainPage"

    .line 36
    invoke-static {p0, p1, v2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1}, Lyp;->K()V

    .line 38
    invoke-static {p0}, Luq;->j(Landroid/content/Context;)V

    .line 39
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mBtnPro:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-static {p1, v2}, Luq;->t(Landroid/view/View;Z)V

    const-string p1, "needUpdateFileNew"

    .line 40
    invoke-static {p0, p1, v1}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->s:Z

    if-eqz p1, :cond_6

    goto :goto_4

    .line 41
    :cond_6
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "NewDownloadUser"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "HasUpdateDownloadData"

    if-nez p1, :cond_8

    .line 42
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 43
    sget-object p1, Lcom/camerasideas/collagemaker/appdata/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lbm;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 44
    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/appdata/f;->k(Landroid/content/Context;Z)V

    goto :goto_5

    .line 45
    :cond_7
    new-instance p1, Lcom/camerasideas/collagemaker/activity/x0;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/x0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->q:Lul;

    .line 46
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->r:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/j;->x1(J)V

    .line 48
    new-instance p1, Lcom/camerasideas/collagemaker/activity/f0;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/f0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-static {p1}, Lml;->h(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 49
    :cond_8
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 50
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/h0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/h0;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 52
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->H()V

    goto :goto_5

    .line 53
    :cond_9
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->H()V

    goto :goto_5

    .line 54
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/MainActivity;->H()V

    :goto_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onDestroy()V

    .line 2
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/h;->m(Linshot/collage/adconfig/h$c;)V

    .line 3
    sget-object v1, Linshot/collage/adconfig/i;->b:Linshot/collage/adconfig/i;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/h;->g(Linshot/collage/adconfig/i;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onPause()V

    .line 2
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    sget-object v1, Linshot/collage/adconfig/i;->b:Linshot/collage/adconfig/i;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/h;->j(Linshot/collage/adconfig/i;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const-string p1, "MainActivity"

    const-string p2, "Received response for storage permissions request."

    .line 2
    invoke-static {p1, p2}, Lem;->n(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p3}, Lhm;->e([I)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lml;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lop;

    invoke-direct {v1, p1}, Lop;-><init>(Lyp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->g:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Loo;

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    invoke-virtual {p1, p0, v0}, Loo;->q(Lcom/camerasideas/collagemaker/activity/BaseActivity;Z)I

    move-result p1

    if-ltz p1, :cond_0

    .line 9
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Loo;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->h:I

    invoke-virtual {p1, p0, p2}, Loo;->r(Lcom/camerasideas/collagemaker/activity/BaseActivity;I)V

    goto :goto_2

    .line 11
    :cond_3
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->g:Z

    if-eqz p1, :cond_5

    .line 12
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->g:Z

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "EXTRA_KEY_LIST_PATHS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    const p1, 0x7f0e013e

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    .line 17
    :cond_5
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 18
    invoke-static {p0, p1}, Lhm;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->k:Z

    if-eqz p1, :cond_8

    .line 19
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->j:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_0

    .line 20
    :cond_6
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->j:Z

    .line 21
    invoke-static {p0}, Landroidx/core/app/b;->D0(Landroidx/appcompat/app/AppCompatActivity;)Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 22
    new-instance p2, Lcom/camerasideas/collagemaker/activity/MainActivity$a;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/MainActivity$a;-><init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-static {p0}, Landroidx/core/app/b;->E0(Landroidx/appcompat/app/AppCompatActivity;)Landroidx/fragment/app/b;

    .line 24
    :cond_8
    :goto_1
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "HasDeniedStorageAccess"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 25
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MainActivity"

    const-string v1, "onRestoreInstanceState"

    .line 2
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/a;->e(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    .line 4
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/a;->f(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->e:Landroid/net/Uri;

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_KEY_FROM_SHARE_ACTIVITY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Loo;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFileSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageMainPresenter"

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->a()I

    move-result v2

    const-string v3, "TesterLog-Select Photo"

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "\u7f16\u8f91\u9875\u56de\u9000\u5230\u56fe\u7247\u591a\u9009\u754c\u9762"

    .line 7
    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0, p0, v1}, Loo;->r(Lcom/camerasideas/collagemaker/activity/BaseActivity;I)V

    goto :goto_0

    :cond_3
    const-string v2, "\u7f16\u8f91\u9875\u56de\u9000\u5230\u56fe\u7247\u5355\u9009\u754c\u9762"

    .line 9
    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v0, p0, v1}, Loo;->r(Lcom/camerasideas/collagemaker/activity/BaseActivity;I)V

    .line 11
    :goto_0
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object v1, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/l;->h(Linshot/collage/adconfig/j;)V

    .line 12
    invoke-static {p0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    sget-object v1, Linshot/collage/adconfig/i;->b:Linshot/collage/adconfig/i;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mCardAdLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Linshot/collage/adconfig/h;->k(Linshot/collage/adconfig/i;Landroid/widget/FrameLayout;)V

    :cond_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->s:Z

    const-string v0, "android:support:fragments"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "MainActivity"

    const-string v1, "onSaveInstanceState"

    .line 4
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->f:Z

    const-string v1, "HAS_REPORT_FEEDBACK"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "IMAGE_PATH_FROM_CAMERA"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "SubscribePro"

    .line 1
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mBtnPro:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onStart()V

    .line 2
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UserFlowState"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    sget-object v1, Lcom/camerasideas/collagemaker/appdata/g;->b:Lcom/camerasideas/collagemaker/appdata/g;

    if-ltz v0, :cond_0

    const/16 v0, 0x64

    .line 4
    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/appdata/f;->n(Landroid/content/Context;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, v1}, Luq;->m(Landroid/content/Context;Lcom/camerasideas/collagemaker/appdata/g;)V

    :goto_0
    return-void
.end method

.method protected p()Lyn;
    .locals 1

    .line 1
    new-instance v0, Loo;

    invoke-direct {v0}, Loo;-><init>()V

    return-object v0
.end method

.method protected q()I
    .locals 1

    const v0, 0x7f0b0020

    return v0
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method public removeAd()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->removeAd()V

    return-void
.end method

.method public z(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->m:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/camerasideas/collagemaker/activity/MainActivity;->m:J

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 7
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/camerasideas/collagemaker/activity/MainActivity;->z(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
