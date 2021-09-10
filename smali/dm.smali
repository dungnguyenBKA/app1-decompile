.class public Ldm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldm$d;
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Ldm$d;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnLongClickListener;

.field private e:Landroidx/recyclerview/widget/RecyclerView$p;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldm$a;

    invoke-direct {v0, p0}, Ldm$a;-><init>(Ldm;)V

    iput-object v0, p0, Ldm;->c:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Ldm$b;

    invoke-direct {v0, p0}, Ldm$b;-><init>(Ldm;)V

    iput-object v0, p0, Ldm;->d:Landroid/view/View$OnLongClickListener;

    .line 4
    new-instance v0, Ldm$c;

    invoke-direct {v0, p0}, Ldm$c;-><init>(Ldm;)V

    iput-object v0, p0, Ldm;->e:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 5
    iput-object p1, p0, Ldm;->a:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080174

    .line 6
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Ldm;->e:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method

.method static synthetic a(Ldm;)Ldm$d;
    .locals 0

    .line 1
    iget-object p0, p0, Ldm;->b:Ldm$d;

    return-object p0
.end method

.method static synthetic b(Ldm;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Ldm;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic c(Ldm;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Ldm;->c:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;
    .locals 1

    const v0, 0x7f080174

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldm;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ldm;

    invoke-direct {v0, p0}, Ldm;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public e(Ldm$d;)Ldm;
    .locals 0

    .line 1
    iput-object p1, p0, Ldm;->b:Ldm$d;

    return-object p0
.end method
