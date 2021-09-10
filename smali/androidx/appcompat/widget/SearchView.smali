.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Ll;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$k;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$l;,
        Landroidx/appcompat/widget/SearchView$SavedState;
    }
.end annotation


# static fields
.field static final d0:Landroidx/appcompat/widget/SearchView$k;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:[I

.field private D:[I

.field private final E:Landroid/widget/ImageView;

.field private final F:Landroid/graphics/drawable/Drawable;

.field private final G:Landroid/content/Intent;

.field private final H:Landroid/content/Intent;

.field private final I:Ljava/lang/CharSequence;

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/CharSequence;

.field private M:Z

.field private N:I

.field private O:Ljava/lang/CharSequence;

.field private P:Ljava/lang/CharSequence;

.field private Q:Z

.field private R:I

.field private final S:Ljava/lang/Runnable;

.field private T:Ljava/lang/Runnable;

.field private final U:Landroid/view/View$OnClickListener;

.field V:Landroid/view/View$OnKeyListener;

.field private final W:Landroid/widget/TextView$OnEditorActionListener;

.field private final a0:Landroid/widget/AdapterView$OnItemClickListener;

.field private final b0:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private c0:Landroid/text/TextWatcher;

.field final q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private final r:Landroid/view/View;

.field private final s:Landroid/view/View;

.field private final t:Landroid/view/View;

.field final u:Landroid/widget/ImageView;

.field final v:Landroid/widget/ImageView;

.field final w:Landroid/widget/ImageView;

.field final x:Landroid/widget/ImageView;

.field private final y:Landroid/view/View;

.field private z:Landroidx/appcompat/widget/SearchView$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/SearchView$k;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$k;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SearchView;->d0:Landroidx/appcompat/widget/SearchView$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f03027b

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 6
    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->C:[I

    new-array v2, v1, [I

    .line 7
    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->D:[I

    .line 8
    new-instance v2, Landroidx/appcompat/widget/SearchView$b;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$b;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    .line 9
    new-instance v2, Landroidx/appcompat/widget/SearchView$c;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$c;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->T:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 11
    new-instance v2, Landroidx/appcompat/widget/SearchView$f;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$f;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v3, Landroidx/appcompat/widget/SearchView$g;

    invoke-direct {v3, v0}, Landroidx/appcompat/widget/SearchView$g;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v3, v0, Landroidx/appcompat/widget/SearchView;->V:Landroid/view/View$OnKeyListener;

    .line 13
    new-instance v3, Landroidx/appcompat/widget/SearchView$h;

    invoke-direct {v3, v0}, Landroidx/appcompat/widget/SearchView$h;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v3, v0, Landroidx/appcompat/widget/SearchView;->W:Landroid/widget/TextView$OnEditorActionListener;

    .line 14
    new-instance v4, Landroidx/appcompat/widget/SearchView$i;

    invoke-direct {v4, v0}, Landroidx/appcompat/widget/SearchView$i;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v4, v0, Landroidx/appcompat/widget/SearchView;->a0:Landroid/widget/AdapterView$OnItemClickListener;

    .line 15
    new-instance v5, Landroidx/appcompat/widget/SearchView$j;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/SearchView$j;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v5, v0, Landroidx/appcompat/widget/SearchView;->b0:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 16
    new-instance v6, Landroidx/appcompat/widget/SearchView$a;

    invoke-direct {v6, v0}, Landroidx/appcompat/widget/SearchView$a;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v6, v0, Landroidx/appcompat/widget/SearchView;->c0:Landroid/text/TextWatcher;

    .line 17
    sget-object v6, Landroidx/appcompat/R$styleable;->v:[I

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-static {v8, v9, v6, v10, v7}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object v6

    .line 18
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const/16 v9, 0x9

    const v10, 0x7f0b0019

    .line 19
    invoke-virtual {v6, v9, v10}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v9

    const/4 v10, 0x1

    .line 20
    invoke-virtual {v8, v9, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v8, 0x7f08024c

    .line 21
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 22
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->b(Landroidx/appcompat/widget/SearchView;)V

    const v9, 0x7f080248

    .line 23
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/SearchView;->r:Landroid/view/View;

    const v9, 0x7f08024b

    .line 24
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    const v11, 0x7f080297

    .line 25
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;

    const v12, 0x7f080246

    .line 26
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;

    const v13, 0x7f080249

    .line 27
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;

    const v14, 0x7f080247

    .line 28
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;

    const v15, 0x7f08024d

    .line 29
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;

    const v1, 0x7f08024a

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->E:Landroid/widget/ImageView;

    const/16 v10, 0xa

    .line 31
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 32
    sget v16, Lc3;->g:I

    .line 33
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v9, 0xe

    .line 34
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 35
    invoke-virtual {v11, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v9, 0xd

    .line 36
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x7

    .line 37
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x4

    .line 38
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x10

    .line 39
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc

    .line 41
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f0e0016

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v12, v1}, Landroidx/appcompat/widget/l0;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    const v9, 0x7f0b0018

    .line 44
    invoke-virtual {v6, v1, v9}, Landroidx/appcompat/widget/i0;->n(II)I

    const/4 v1, 0x5

    .line 45
    invoke-virtual {v6, v1, v7}, Landroidx/appcompat/widget/i0;->n(II)I

    .line 46
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v8, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->c0:Landroid/text/TextWatcher;

    invoke-virtual {v8, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    invoke-virtual {v8, v3}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 53
    invoke-virtual {v8, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    invoke-virtual {v8, v5}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 55
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->V:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 56
    new-instance v1, Landroidx/appcompat/widget/SearchView$d;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$d;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v8, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v6, v1, v2}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v1

    .line 58
    iget-boolean v2, v0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iput-boolean v1, v0, Landroidx/appcompat/widget/SearchView;->J:Z

    .line 60
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    .line 61
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->H()V

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v6, v2, v1}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 63
    iput v3, v0, Landroidx/appcompat/widget/SearchView;->N:I

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    const/4 v2, 0x6

    .line 65
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    const/16 v2, 0xb

    .line 66
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->L:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    .line 67
    invoke-virtual {v6, v2, v1}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 68
    invoke-virtual {v8, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    :cond_2
    const/4 v2, 0x2

    .line 69
    invoke-virtual {v6, v2, v1}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 70
    invoke-virtual {v8, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    :cond_3
    const/4 v1, 0x1

    .line 71
    invoke-virtual {v6, v7, v1}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 73
    invoke-virtual {v6}, Landroidx/appcompat/widget/i0;->v()V

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->G:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    .line 76
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->H:Landroid/content/Intent;

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 80
    new-instance v2, Landroidx/appcompat/widget/SearchView$e;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 81
    :cond_4
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView;->J:Z

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    .line 82
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->H()V

    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->Q:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method private H()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->L:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 4
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 6
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v2

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private I(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz p1, :cond_3

    :cond_2
    const/16 v0, 0x8

    .line 7
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->F()V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method A(I)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method B()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    return-void
.end method

.method C()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    return-void
.end method

.method D(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->F()V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->O:Ljava/lang/CharSequence;

    return-void
.end method

.method E()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->y()V

    :cond_0
    return-void
.end method

.method G()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Z

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/SearchView;->R:I

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v3, 0x2000000

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 3
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroidx/appcompat/widget/SearchView;->R:I

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;

    .line 3
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->C:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->D:[I

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 5
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->C:[I

    const/4 v0, 0x1

    aget v1, p4, v0

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->D:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    .line 6
    aget p4, p4, v0

    aget v2, v2, v0

    sub-int/2addr p4, v2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2, p4, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroidx/appcompat/widget/SearchView$l;

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Landroidx/appcompat/widget/SearchView$l;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$l;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroidx/appcompat/widget/SearchView$l;

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView$l;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const v1, 0x7f060037

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->N:I

    if-lez v0, :cond_6

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->N:I

    if-lez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 10
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->N:I

    if-lez v0, :cond_5

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    :cond_6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const v1, 0x7f060036

    if-eq v0, v2, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 18
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    .line 19
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 21
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 22
    :goto_1
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 23
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 24
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$SavedState;->d:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 4
    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$SavedState;->d:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    :cond_2
    return p1

    .line 6
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method x()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result v3

    .line 6
    iget-boolean v4, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz v4, :cond_0

    const v4, 0x7f060029

    .line 7
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f06002a

    .line 8
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    .line 10
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    goto :goto_1

    .line 11
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    sub-int v3, v1, v3

    .line 12
    :goto_1
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 13
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method

.method y()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->refreshAutoCompleteResults()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->d0:Landroidx/appcompat/widget/SearchView$k;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$k;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$k;->a(Landroid/widget/AutoCompleteTextView;)V

    :goto_0
    return-void
.end method

.method z()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 5
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->I(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
