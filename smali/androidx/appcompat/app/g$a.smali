.class public Landroidx/appcompat/app/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/appcompat/app/AlertController$b;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroidx/appcompat/app/g;->d(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Landroidx/appcompat/app/AlertController$b;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, v0}, Landroidx/appcompat/app/g;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 5
    iput v0, p0, Landroidx/appcompat/app/g$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroidx/appcompat/app/AlertController$b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 8
    invoke-static {p1, p2}, Landroidx/appcompat/app/g;->d(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 9
    iput p2, p0, Landroidx/appcompat/app/g$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/app/g;
    .locals 10

    .line 1
    new-instance v0, Landroidx/appcompat/app/g;

    iget-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Landroidx/appcompat/app/g$a;->b:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/g;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v8, v0, Landroidx/appcompat/app/g;->d:Landroidx/appcompat/app/AlertController;

    .line 3
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->e:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AlertController;->g(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AlertController;->j(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AlertController;->h(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AlertController;->i(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    .line 12
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 13
    :goto_1
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, -0x2

    .line 14
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 15
    :goto_2
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->m:Landroid/widget/ListAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 16
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    iget v5, v8, Landroidx/appcompat/app/AlertController;->L:I

    .line 17
    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 18
    iget-boolean v5, v1, Landroidx/appcompat/app/AlertController$b;->p:Z

    if-eqz v5, :cond_6

    .line 19
    iget v5, v8, Landroidx/appcompat/app/AlertController;->N:I

    goto :goto_3

    .line 20
    :cond_6
    iget v5, v8, Landroidx/appcompat/app/AlertController;->O:I

    .line 21
    :goto_3
    iget-object v6, v1, Landroidx/appcompat/app/AlertController$b;->m:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_7

    goto :goto_4

    .line 22
    :cond_7
    new-instance v6, Landroidx/appcompat/app/AlertController$d;

    iget-object v7, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    const v9, 0x1020014

    invoke-direct {v6, v7, v5, v9, v4}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 23
    :goto_4
    iput-object v6, v8, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 24
    iget v5, v1, Landroidx/appcompat/app/AlertController$b;->q:I

    iput v5, v8, Landroidx/appcompat/app/AlertController;->I:I

    .line 25
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_8

    .line 26
    new-instance v5, Landroidx/appcompat/app/f;

    invoke-direct {v5, v1, v8}, Landroidx/appcompat/app/f;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 27
    :cond_8
    iget-boolean v5, v1, Landroidx/appcompat/app/AlertController$b;->p:Z

    if-eqz v5, :cond_9

    .line 28
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 29
    :cond_9
    iput-object v2, v8, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 30
    :cond_a
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->o:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 31
    invoke-virtual {v8, v1}, Landroidx/appcompat/app/AlertController;->k(Landroid/view/View;)V

    .line 32
    :cond_b
    iget-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->k:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 33
    iget-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->k:Z

    if-eqz v1, :cond_c

    .line 34
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    :cond_c
    iget-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 36
    iget-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    iget-object v1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_d

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_d
    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public c(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->m:Landroid/widget/ListAdapter;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d(Z)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->k:Z

    return-object p0
.end method

.method public e(Landroid/view/View;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->e:Landroid/view/View;

    return-object p0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public g(I)Landroidx/appcompat/app/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public j(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public k(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public l(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public m(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->m:Landroid/widget/ListAdapter;

    .line 2
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->q:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->p:Z

    return-object p0
.end method

.method public n(I)Landroidx/appcompat/app/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p(Landroid/view/View;)Landroidx/appcompat/app/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->o:Landroid/view/View;

    return-object p0
.end method
