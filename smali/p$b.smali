.class Lp$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field A:Lo2;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/graphics/PorterDuff$Mode;

.field final synthetic F:Lp;

.field private a:Landroid/view/Menu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:C

.field private o:I

.field private p:C

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lp;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp$b;->F:Lp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lp$b;->D:Landroid/content/res/ColorStateList;

    .line 3
    iput-object p1, p0, Lp$b;->E:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iput-object p2, p0, Lp$b;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lp$b;->b:I

    .line 6
    iput p1, p0, Lp$b;->c:I

    .line 7
    iput p1, p0, Lp$b;->d:I

    .line 8
    iput p1, p0, Lp$b;->e:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lp$b;->f:Z

    .line 10
    iput-boolean p1, p0, Lp$b;->g:Z

    return-void
.end method

.method private d(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lp$b;->F:Lp;

    iget-object v0, v0, Lp;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private h(Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lp$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lp$b;->t:Z

    .line 2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lp$b;->u:Z

    .line 3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lp$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lp$b;->l:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lp$b;->m:I

    .line 6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7
    iget v0, p0, Lp$b;->v:I

    if-ltz v0, :cond_1

    .line 8
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lp$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lp$b;->F:Lp;

    iget-object v0, v0, Lp;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lp$a;

    iget-object v1, p0, Lp$b;->F:Lp;

    .line 12
    invoke-virtual {v1}, Lp;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lp$b;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lp$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    :goto_1
    instance-of v0, p1, Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/i;

    .line 16
    :cond_4
    iget v1, p0, Lp$b;->r:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    .line 17
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/i;->r(Z)V

    goto :goto_2

    .line 18
    :cond_5
    instance-of v0, p1, Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_6

    .line 19
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/j;->h(Z)V

    .line 20
    :cond_6
    :goto_2
    iget-object v0, p0, Lp$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 21
    sget-object v1, Lp;->e:[Ljava/lang/Class;

    iget-object v2, p0, Lp$b;->F:Lp;

    iget-object v2, v2, Lp;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lp$b;->d(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    .line 23
    :cond_7
    iget v0, p0, Lp$b;->w:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    .line 24
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_9
    :goto_3
    iget-object v0, p0, Lp$b;->A:Lo2;

    if-eqz v0, :cond_b

    .line 27
    instance-of v1, p1, Lv1;

    if-eqz v1, :cond_a

    .line 28
    move-object v1, p1

    check-cast v1, Lv1;

    invoke-interface {v1, v0}, Lv1;->a(Lo2;)Lv1;

    goto :goto_4

    :cond_a
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_b
    :goto_4
    iget-object v0, p0, Lp$b;->B:Ljava/lang/CharSequence;

    .line 31
    instance-of v1, p1, Lv1;

    const/16 v2, 0x1a

    if-eqz v1, :cond_c

    .line 32
    move-object v3, p1

    check-cast v3, Lv1;

    invoke-interface {v3, v0}, Lv1;->setContentDescription(Ljava/lang/CharSequence;)Lv1;

    goto :goto_5

    .line 33
    :cond_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_d

    .line 34
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    :cond_d
    :goto_5
    iget-object v0, p0, Lp$b;->C:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 36
    move-object v3, p1

    check-cast v3, Lv1;

    invoke-interface {v3, v0}, Lv1;->setTooltipText(Ljava/lang/CharSequence;)Lv1;

    goto :goto_6

    .line 37
    :cond_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_f

    .line 38
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 39
    :cond_f
    :goto_6
    iget-char v0, p0, Lp$b;->n:C

    iget v3, p0, Lp$b;->o:I

    if-eqz v1, :cond_10

    .line 40
    move-object v4, p1

    check-cast v4, Lv1;

    invoke-interface {v4, v0, v3}, Lv1;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_7

    .line 41
    :cond_10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_11

    .line 42
    invoke-interface {p1, v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 43
    :cond_11
    :goto_7
    iget-char v0, p0, Lp$b;->p:C

    iget v3, p0, Lp$b;->q:I

    if-eqz v1, :cond_12

    .line 44
    move-object v4, p1

    check-cast v4, Lv1;

    invoke-interface {v4, v0, v3}, Lv1;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_8

    .line 45
    :cond_12
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_13

    .line 46
    invoke-interface {p1, v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 47
    :cond_13
    :goto_8
    iget-object v0, p0, Lp$b;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_15

    if-eqz v1, :cond_14

    .line 48
    move-object v3, p1

    check-cast v3, Lv1;

    invoke-interface {v3, v0}, Lv1;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_9

    .line 49
    :cond_14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_15

    .line 50
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 51
    :cond_15
    :goto_9
    iget-object v0, p0, Lp$b;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_17

    if-eqz v1, :cond_16

    .line 52
    check-cast p1, Lv1;

    invoke-interface {p1, v0}, Lv1;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_a

    .line 53
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_17

    .line 54
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_17
    :goto_a
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lp$b;->h:Z

    .line 2
    iget-object v0, p0, Lp$b;->a:Landroid/view/Menu;

    iget v1, p0, Lp$b;->b:I

    iget v2, p0, Lp$b;->i:I

    iget v3, p0, Lp$b;->j:I

    iget-object v4, p0, Lp$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lp$b;->h(Landroid/view/MenuItem;)V

    return-void
.end method

.method public b()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lp$b;->h:Z

    .line 2
    iget-object v0, p0, Lp$b;->a:Landroid/view/Menu;

    iget v1, p0, Lp$b;->b:I

    iget v2, p0, Lp$b;->i:I

    iget v3, p0, Lp$b;->j:I

    iget-object v4, p0, Lp$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lp$b;->h(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp$b;->h:Z

    return v0
.end method

.method public e(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp$b;->F:Lp;

    iget-object v0, v0, Lp;->c:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->q:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lp$b;->b:I

    const/4 v2, 0x3

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lp$b;->c:I

    const/4 v2, 0x4

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lp$b;->d:I

    const/4 v2, 0x5

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lp$b;->e:I

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lp$b;->f:Z

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lp$b;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public f(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp$b;->F:Lp;

    iget-object v0, v0, Lp;->c:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->r:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/i0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/i0;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v0

    iput v0, p0, Lp$b;->i:I

    .line 3
    iget v0, p0, Lp$b;->c:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v0

    .line 4
    iget v2, p0, Lp$b;->d:I

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 5
    iput v0, p0, Lp$b;->j:I

    const/4 v0, 0x7

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lp$b;->k:Ljava/lang/CharSequence;

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lp$b;->l:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p1, v1, v1}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v0

    iput v0, p0, Lp$b;->m:I

    const/16 v0, 0x9

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 11
    :goto_0
    iput-char v0, p0, Lp$b;->n:C

    const/16 v0, 0x10

    const/16 v2, 0x1000

    .line 12
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v0

    iput v0, p0, Lp$b;->o:I

    const/16 v0, 0xa

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 15
    :goto_1
    iput-char v0, p0, Lp$b;->p:C

    const/16 v0, 0x14

    .line 16
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v0

    iput v0, p0, Lp$b;->q:I

    const/16 v0, 0xb

    .line 17
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v0

    iput v0, p0, Lp$b;->r:I

    goto :goto_2

    .line 19
    :cond_2
    iget v0, p0, Lp$b;->e:I

    iput v0, p0, Lp$b;->r:I

    :goto_2
    const/4 v0, 0x3

    .line 20
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lp$b;->s:Z

    const/4 v0, 0x4

    .line 21
    iget-boolean v2, p0, Lp$b;->f:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lp$b;->t:Z

    .line 22
    iget-boolean v0, p0, Lp$b;->g:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lp$b;->u:Z

    const/16 v0, 0x15

    const/4 v3, -0x1

    .line 23
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v0

    iput v0, p0, Lp$b;->v:I

    const/16 v0, 0xc

    .line 24
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp$b;->z:Ljava/lang/String;

    const/16 v0, 0xd

    .line 25
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v0

    iput v0, p0, Lp$b;->w:I

    const/16 v0, 0xf

    .line 26
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp$b;->x:Ljava/lang/String;

    const/16 v0, 0xe

    .line 27
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 28
    iget v5, p0, Lp$b;->w:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lp$b;->x:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 29
    sget-object v2, Lp;->f:[Ljava/lang/Class;

    iget-object v5, p0, Lp$b;->F:Lp;

    iget-object v5, v5, Lp;->b:[Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v5}, Lp$b;->d(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2;

    iput-object v0, p0, Lp$b;->A:Lo2;

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "SupportMenuInflater"

    const-string v2, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 30
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_5
    iput-object v4, p0, Lp$b;->A:Lo2;

    :goto_4
    const/16 v0, 0x11

    .line 32
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lp$b;->B:Ljava/lang/CharSequence;

    const/16 v0, 0x16

    .line 33
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lp$b;->C:Ljava/lang/CharSequence;

    const/16 v0, 0x13

    .line 34
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 35
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v0

    iget-object v2, p0, Lp$b;->E:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/o;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lp$b;->E:Landroid/graphics/PorterDuff$Mode;

    goto :goto_5

    .line 36
    :cond_6
    iput-object v4, p0, Lp$b;->E:Landroid/graphics/PorterDuff$Mode;

    :goto_5
    const/16 v0, 0x12

    .line 37
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 38
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lp$b;->D:Landroid/content/res/ColorStateList;

    goto :goto_6

    .line 39
    :cond_7
    iput-object v4, p0, Lp$b;->D:Landroid/content/res/ColorStateList;

    .line 40
    :goto_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/i0;->v()V

    .line 41
    iput-boolean v1, p0, Lp$b;->h:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lp$b;->b:I

    .line 2
    iput v0, p0, Lp$b;->c:I

    .line 3
    iput v0, p0, Lp$b;->d:I

    .line 4
    iput v0, p0, Lp$b;->e:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lp$b;->f:Z

    .line 6
    iput-boolean v0, p0, Lp$b;->g:Z

    return-void
.end method
