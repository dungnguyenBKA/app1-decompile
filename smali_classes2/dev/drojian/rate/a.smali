.class public abstract Ldev/drojian/rate/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/drojian/rate/a$e;
    }
.end annotation


# instance fields
.field protected a:Landroidx/appcompat/widget/StarCheckView;

.field protected b:Landroidx/appcompat/widget/StarCheckView;

.field protected c:Landroidx/appcompat/widget/StarCheckView;

.field protected d:Landroidx/appcompat/widget/StarCheckView;

.field protected e:Landroidx/appcompat/widget/StarCheckView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/LinearLayout;

.field private l:Landroid/app/Dialog;

.field private m:Led0;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldev/drojian/rate/a;->n:I

    return-void
.end method

.method static synthetic a(Ldev/drojian/rate/a;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/drojian/rate/a;->l:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic b(Ldev/drojian/rate/a;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/drojian/rate/a;->n:I

    return p0
.end method

.method static synthetic c(Ldev/drojian/rate/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Ldev/drojian/rate/a;->n:I

    return p1
.end method

.method static d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V
    .locals 10

    .line 1
    iget p3, p0, Ldev/drojian/rate/a;->n:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    const v2, 0x7f070177

    if-eqz p3, :cond_6

    const/4 v3, 0x5

    const v4, 0x7f0e0090

    const v5, 0x7f0e0093

    const/4 v6, 0x1

    const v7, 0x7f0e0085

    if-eq p3, v6, :cond_4

    const/4 v8, 0x2

    if-eq p3, v8, :cond_3

    const/4 v9, 0x3

    if-eq p3, v9, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Ldev/drojian/rate/a;->m:Led0;

    invoke-virtual {p3, v0}, Led0;->h(I)Z

    const v2, 0x7f07017c

    const p3, 0x7f0e0084

    const v7, 0x7f0e0084

    goto :goto_0

    .line 3
    :cond_1
    iget-object p3, p0, Ldev/drojian/rate/a;->m:Led0;

    invoke-virtual {p3, v9}, Led0;->h(I)Z

    const v2, 0x7f07017b

    :goto_0
    const v4, 0x7f0e0096

    const v5, 0x7f0e0091

    goto :goto_1

    .line 4
    :cond_2
    iget-object p3, p0, Ldev/drojian/rate/a;->m:Led0;

    invoke-virtual {p3, v8}, Led0;->h(I)Z

    const v2, 0x7f07017a

    goto :goto_1

    .line 5
    :cond_3
    iget-object p3, p0, Ldev/drojian/rate/a;->m:Led0;

    invoke-virtual {p3, v6}, Led0;->h(I)Z

    const v2, 0x7f070179

    goto :goto_1

    .line 6
    :cond_4
    iget-object p3, p0, Ldev/drojian/rate/a;->m:Led0;

    invoke-virtual {p3, v1}, Led0;->h(I)Z

    const v2, 0x7f070178

    .line 7
    :goto_1
    invoke-direct {p0, v2}, Ldev/drojian/rate/a;->f(I)V

    .line 8
    iget-object p3, p0, Ldev/drojian/rate/a;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p3, p0, Ldev/drojian/rate/a;->g:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p3, p0, Ldev/drojian/rate/a;->h:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p3, p0, Ldev/drojian/rate/a;->g:Landroid/widget/TextView;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object p3, p0, Ldev/drojian/rate/a;->h:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object p3, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object p3, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 15
    iget-object p3, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 16
    iget-object p3, p0, Ldev/drojian/rate/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 17
    iget-boolean p3, p2, Lbd0;->e:Z

    if-eqz p3, :cond_7

    iget p3, p0, Ldev/drojian/rate/a;->n:I

    if-ne p3, v3, :cond_7

    .line 18
    invoke-static {p1, p2}, Ldev/drojian/rate/c;->b(Landroid/content/Context;Lbd0;)V

    if-eqz p4, :cond_5

    .line 19
    invoke-interface {p4}, Ldd0;->b()V

    const-string p1, "AppRate_new"

    const-string p2, "Like"

    const-string p3, "Review"

    .line 20
    invoke-interface {p4, p1, p2, p3}, Ldd0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    iget-object p1, p0, Ldev/drojian/rate/a;->l:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iget-object p0, p0, Ldev/drojian/rate/a;->l:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 23
    :cond_6
    invoke-direct {p0, v2}, Ldev/drojian/rate/a;->f(I)V

    .line 24
    iget-object p1, p0, Ldev/drojian/rate/a;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Ldev/drojian/rate/a;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Ldev/drojian/rate/a;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 28
    iget-object p1, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 29
    iget-object p0, p0, Ldev/drojian/rate/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_7
    :goto_2
    return-void
.end method

.method private f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/drojian/rate/a;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldev/drojian/rate/a$d;

    invoke-direct {v1, p0, p1}, Ldev/drojian/rate/a$d;-><init>(Ldev/drojian/rate/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private g(Ljava/util/Locale;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "ID"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public abstract e(Landroid/content/Context;Lbd0;Led0;Ldd0;)Landroid/app/Dialog;
.end method

.method public h(Landroid/content/Context;Lbd0;Ldd0;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p2, Lbd0;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Ldev/drojian/rate/a;->g(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ldev/drojian/rate/a;->g(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_4

    const-string v0, "AppRate_new"

    const-string v1, "Show"

    const-string v2, ""

    .line 6
    invoke-interface {p3, v0, v1, v2}, Ldd0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Led0;

    invoke-direct {v1, v0}, Led0;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Ldev/drojian/rate/a;->m:Led0;

    .line 9
    invoke-virtual {p0, p1, p2, v1, p3}, Ldev/drojian/rate/a;->e(Landroid/content/Context;Lbd0;Led0;Ldd0;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Ldev/drojian/rate/a;->l:Landroid/app/Dialog;

    .line 10
    iget-boolean v2, p2, Lbd0;->h:Z

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 11
    iget-boolean v1, p2, Lbd0;->a:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p2, Lbd0;->b:Z

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, p0, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    iget-object v1, p0, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, p0, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, p0, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, p0, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, p0, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_2
    iget-object v0, p0, Ldev/drojian/rate/a;->l:Landroid/app/Dialog;

    new-instance v1, Ldev/drojian/rate/a$a;

    invoke-direct {v1, p0, p3}, Ldev/drojian/rate/a$a;-><init>(Ldev/drojian/rate/a;Ldd0;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    iget-object v0, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    new-instance v1, Ldev/drojian/rate/a$b;

    invoke-direct {v1, p0, p1, p2, p3}, Ldev/drojian/rate/a$b;-><init>(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;Ldd0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Ldev/drojian/rate/a;->l:Landroid/app/Dialog;

    new-instance p2, Ldev/drojian/rate/a$c;

    invoke-direct {p2, p0, p3}, Ldev/drojian/rate/a$c;-><init>(Ldev/drojian/rate/a;Ldd0;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
