.class public final Lcom/google/android/material/datepicker/e;
.super Lcom/google/android/material/datepicker/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/e$f;,
        Lcom/google/android/material/datepicker/e$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/q<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final synthetic f0:I


# instance fields
.field private V:I

.field private W:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private X:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private Y:Lcom/google/android/material/datepicker/Month;

.field private Z:Lcom/google/android/material/datepicker/e$e;

.field private a0:Lcom/google/android/material/datepicker/b;

.field private b0:Landroidx/recyclerview/widget/RecyclerView;

.field private c0:Landroidx/recyclerview/widget/RecyclerView;

.field private d0:Landroid/view/View;

.field private e0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/q;-><init>()V

    return-void
.end method

.method static synthetic l1(Lcom/google/android/material/datepicker/e;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic m1(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->X:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object p0
.end method

.method static synthetic n1(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->W:Lcom/google/android/material/datepicker/DateSelector;

    return-object p0
.end method

.method static synthetic o1(Lcom/google/android/material/datepicker/e;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic p1(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/datepicker/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->a0:Lcom/google/android/material/datepicker/b;

    return-object p0
.end method

.method static synthetic q1(Lcom/google/android/material/datepicker/e;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->e0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic r1(Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    return-object p1
.end method

.method private x1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/e$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/e$a;-><init>(Lcom/google/android/material/datepicker/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public A0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/e;->V:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->W:Lcom/google/android/material/datepicker/DateSelector;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->X:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method A1()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/material/datepicker/e$e;->b:Lcom/google/android/material/datepicker/e$e;

    iget-object v1, p0, Lcom/google/android/material/datepicker/e;->Z:Lcom/google/android/material/datepicker/e$e;

    sget-object v2, Lcom/google/android/material/datepicker/e$e;->c:Lcom/google/android/material/datepicker/e$e;

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/e;->z1(Lcom/google/android/material/datepicker/e$e;)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/material/datepicker/e;->z1(Lcom/google/android/material/datepicker/e$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j0(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/e;->V:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lcom/google/android/material/datepicker/e;->W:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Lcom/google/android/material/datepicker/e;->X:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/Month;

    iput-object p1, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/e;->V:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/b;

    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/e;->a0:Lcom/google/android/material/datepicker/b;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->X:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->e()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 5
    invoke-static {p3}, Lcom/google/android/material/datepicker/l;->u1(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0b008e

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0089

    const/4 v9, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0801be

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 8
    new-instance v1, Lcom/google/android/material/datepicker/e$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/e$b;-><init>(Lcom/google/android/material/datepicker/e;)V

    invoke-static {p2, v1}, Lc3;->u(Landroid/view/View;Ln2;)V

    .line 9
    new-instance v1, Lcom/google/android/material/datepicker/d;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/d;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->f:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 11
    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    const p2, 0x7f0801c1

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    new-instance p2, Lcom/google/android/material/datepicker/e$c;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/datepicker/e$c;-><init>(Lcom/google/android/material/datepicker/e;Landroid/content/Context;IZI)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 16
    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 17
    new-instance p2, Lcom/google/android/material/datepicker/o;

    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->W:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v1, p0, Lcom/google/android/material/datepicker/e;->X:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v4, Lcom/google/android/material/datepicker/e$d;

    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/e$d;-><init>(Lcom/google/android/material/datepicker/e;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lcom/google/android/material/datepicker/o;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/e$f;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 19
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x7f0801c4

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/google/android/material/datepicker/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 22
    iget-object v4, p0, Lcom/google/android/material/datepicker/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/google/android/material/datepicker/t;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/t;-><init>(Lcom/google/android/material/datepicker/e;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    new-instance v2, Lcom/google/android/material/datepicker/f;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/f;-><init>(Lcom/google/android/material/datepicker/e;)V

    .line 26
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_1
    const v0, 0x7f0801b9

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "SELECTOR_TOGGLE_TAG"

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 30
    new-instance v2, Lcom/google/android/material/datepicker/g;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/g;-><init>(Lcom/google/android/material/datepicker/e;)V

    invoke-static {v0, v2}, Lc3;->u(Landroid/view/View;Ln2;)V

    const v2, 0x7f0801bb

    .line 31
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "NAVIGATION_PREV_TAG"

    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0801ba

    .line 33
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_NEXT_TAG"

    .line 34
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/e;->d0:Landroid/view/View;

    const v1, 0x7f0801bd

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/e;->e0:Landroid/view/View;

    .line 37
    sget-object v1, Lcom/google/android/material/datepicker/e$e;->b:Lcom/google/android/material/datepicker/e$e;

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/e;->z1(Lcom/google/android/material/datepicker/e$e;)V

    .line 38
    iget-object v1, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/Month;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/android/material/datepicker/h;

    invoke-direct {v4, p0, p2, v0}, Lcom/google/android/material/datepicker/h;-><init>(Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/o;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 40
    new-instance v1, Lcom/google/android/material/datepicker/i;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/i;-><init>(Lcom/google/android/material/datepicker/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v0, Lcom/google/android/material/datepicker/j;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/j;-><init>(Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Lcom/google/android/material/datepicker/k;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/k;-><init>(Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_2
    invoke-static {p3}, Lcom/google/android/material/datepicker/l;->u1(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 44
    new-instance p3, Landroidx/recyclerview/widget/r;

    invoke-direct {p3}, Landroidx/recyclerview/widget/r;-><init>()V

    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/b0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 45
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/o;->C(Lcom/google/android/material/datepicker/Month;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-object p1
.end method

.method s1()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->X:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method t1()Lcom/google/android/material/datepicker/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->a0:Lcom/google/android/material/datepicker/b;

    return-object v0
.end method

.method u1()Lcom/google/android/material/datepicker/Month;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method public v1()Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->W:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method w1()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method y1(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/o;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/o;->C(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/o;->C(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    sub-int v0, v1, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/e;->x1(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->c0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/e;->x1(I)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/e;->x1(I)V

    :goto_2
    return-void
.end method

.method z1(Lcom/google/android/material/datepicker/e$e;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/e;->Z:Lcom/google/android/material/datepicker/e$e;

    .line 2
    sget-object v0, Lcom/google/android/material/datepicker/e$e;->c:Lcom/google/android/material/datepicker/e$e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/e;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/t;

    iget-object v3, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    iget v3, v3, Lcom/google/android/material/datepicker/Month;->e:I

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/t;->A(I)I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->Y0(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->d0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->e0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/e$e;->b:Lcom/google/android/material/datepicker/e$e;

    if-ne p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->d0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->e0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->Y:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/e;->y1(Lcom/google/android/material/datepicker/Month;)V

    :cond_1
    :goto_0
    return-void
.end method
