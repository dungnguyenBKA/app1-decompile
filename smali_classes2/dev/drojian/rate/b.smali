.class public Ldev/drojian/rate/b;
.super Ldev/drojian/rate/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/drojian/rate/a;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/content/Context;Lbd0;Led0;Ldd0;)Landroid/app/Dialog;
    .locals 5

    .line 1
    new-instance v0, Lcd0;

    invoke-direct {v0, p1}, Lcd0;-><init>(Landroid/content/Context;)V

    .line 2
    iget-boolean v1, p2, Lbd0;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Lbd0;->b:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0b007b

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0b007a

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    iget-boolean v2, p2, Lbd0;->a:Z

    if-eqz v2, :cond_1

    const v2, 0x7f08020c

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    const v2, 0x7f080194

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    :goto_0
    const v2, 0x7f08020b

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Ldev/drojian/rate/a;->i:Landroid/widget/ImageView;

    const v2, 0x7f080216

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ldev/drojian/rate/a;->f:Landroid/widget/TextView;

    const v2, 0x7f080193

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Ldev/drojian/rate/a;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f080192

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    const v2, 0x7f080210

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ldev/drojian/rate/a;->g:Landroid/widget/TextView;

    const v2, 0x7f08020f

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ldev/drojian/rate/a;->h:Landroid/widget/TextView;

    .line 14
    iget-boolean v2, p2, Lbd0;->c:Z

    if-eqz v2, :cond_2

    const v2, 0x7f070176

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    iget-object v2, p0, Ldev/drojian/rate/a;->f:Landroid/widget/TextView;

    const v3, 0x7f0500b0

    invoke-static {p1, v3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v2, p0, Ldev/drojian/rate/a;->g:Landroid/widget/TextView;

    invoke-static {p1, v3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v2, p0, Ldev/drojian/rate/a;->h:Landroid/widget/TextView;

    invoke-static {p1, v3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_2
    iget-object v2, p0, Ldev/drojian/rate/a;->i:Landroid/widget/ImageView;

    const v3, 0x7f070177

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v2, p0, Ldev/drojian/rate/a;->f:Landroid/widget/TextView;

    iget-object v3, p2, Lbd0;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v2, p0, Ldev/drojian/rate/a;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v2, p0, Ldev/drojian/rate/a;->g:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v2, p0, Ldev/drojian/rate/a;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v2, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 25
    iget-object v2, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 26
    iget-object v2, p0, Ldev/drojian/rate/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 27
    iget-object v2, p0, Ldev/drojian/rate/a;->j:Landroid/widget/TextView;

    const v3, 0x7f0e0085

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080211

    .line 28
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/StarCheckView;

    iput-object p1, p0, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    const p1, 0x7f080212

    .line 29
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/StarCheckView;

    iput-object p1, p0, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    const p1, 0x7f080213

    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/StarCheckView;

    iput-object p1, p0, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    const p1, 0x7f080214

    .line 31
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/StarCheckView;

    iput-object p1, p0, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    const p1, 0x7f080215

    .line 32
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/StarCheckView;

    iput-object p1, p0, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 33
    new-instance p1, Ldev/drojian/rate/a$e;

    invoke-direct {p1, p0, p2, p4}, Ldev/drojian/rate/a$e;-><init>(Ldev/drojian/rate/a;Lbd0;Ldd0;)V

    .line 34
    iget-object p2, p0, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p2, p0, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p2, p0, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p2, p0, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p2, p0, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/g$a;->p(Landroid/view/View;)Landroidx/appcompat/app/g$a;

    .line 40
    new-instance p1, Ldev/drojian/rate/b$a;

    invoke-direct {p1, p0, p3}, Ldev/drojian/rate/b$a;-><init>(Ldev/drojian/rate/b;Led0;)V

    const-wide/16 p2, 0x4b0

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/app/g$a;->a()Landroidx/appcompat/app/g;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method
