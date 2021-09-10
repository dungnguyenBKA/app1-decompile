.class public Ln3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Ln3$a;

.field public static final f:Ln3$a;

.field public static final g:Ln3$a;

.field public static final h:Ln3$a;

.field public static final i:Ln3$a;

.field public static final j:Ln3$a;

.field public static final k:Ln3$a;

.field public static final l:Ln3$a;

.field public static final m:Ln3$a;

.field public static final n:Ln3$a;


# instance fields
.field final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lp3$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lp3;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ln3$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->e:Ln3$a;

    .line 2
    new-instance v0, Ln3$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->f:Ln3$a;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x8

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1

    .line 6
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 7
    :cond_1
    new-instance v0, Ln3$a;

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->g:Ln3$a;

    const/16 v0, 0x20

    .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2

    .line 9
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_2
    const/16 v0, 0x40

    .line 10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_3

    .line 11
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_3
    const/16 v0, 0x80

    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_4

    .line 13
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_4
    const/16 v0, 0x100

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_5

    .line 15
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_5
    const/16 v0, 0x200

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_6

    .line 17
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_6
    const/16 v0, 0x400

    .line 18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_7

    .line 19
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_7
    const/16 v0, 0x800

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_8

    .line 21
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 22
    :cond_8
    new-instance v0, Ln3$a;

    const/16 v3, 0x1000

    invoke-direct {v0, v3, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->h:Ln3$a;

    .line 23
    new-instance v0, Ln3$a;

    const/16 v3, 0x2000

    invoke-direct {v0, v3, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->i:Ln3$a;

    const/16 v0, 0x4000

    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_9

    .line 25
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_9
    const v0, 0x8000

    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_a

    .line 27
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_a
    const/high16 v0, 0x10000

    .line 28
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_b

    .line 29
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_b
    const/high16 v0, 0x20000

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_c

    .line 31
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 32
    :cond_c
    new-instance v0, Ln3$a;

    const/high16 v3, 0x40000

    invoke-direct {v0, v3, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->j:Ln3$a;

    .line 33
    new-instance v0, Ln3$a;

    const/high16 v3, 0x80000

    invoke-direct {v0, v3, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->k:Ln3$a;

    .line 34
    new-instance v0, Ln3$a;

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v2}, Ln3$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Ln3$a;->l:Ln3$a;

    const/high16 v0, 0x200000

    .line 35
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_d

    .line 36
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 37
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_e

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_0

    :cond_e
    move-object v4, v2

    :goto_0
    const v5, 0x1020036

    .line 38
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_f

    if-nez v4, :cond_f

    .line 39
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_f
    if-lt v0, v3, :cond_10

    .line 40
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    :cond_10
    move-object v4, v2

    :goto_1
    const v5, 0x1020037

    .line 41
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_11

    if-nez v4, :cond_11

    .line 42
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 43
    :cond_11
    new-instance v4, Ln3$a;

    if-lt v0, v3, :cond_12

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v7, v5

    goto :goto_2

    :cond_12
    move-object v7, v2

    :goto_2
    const v8, 0x1020038

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Ln3$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lp3;Ljava/lang/Class;)V

    sput-object v4, Ln3$a;->m:Ln3$a;

    if-lt v0, v3, :cond_13

    .line 44
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    :cond_13
    move-object v4, v2

    :goto_3
    const v5, 0x1020039

    .line 45
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_14

    if-nez v4, :cond_14

    .line 46
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 47
    :cond_14
    new-instance v4, Ln3$a;

    if-lt v0, v3, :cond_15

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v7, v5

    goto :goto_4

    :cond_15
    move-object v7, v2

    :goto_4
    const v8, 0x102003a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Ln3$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lp3;Ljava/lang/Class;)V

    sput-object v4, Ln3$a;->n:Ln3$a;

    if-lt v0, v3, :cond_16

    .line 48
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_5

    :cond_16
    move-object v4, v2

    :goto_5
    const v5, 0x102003b

    .line 49
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_17

    if-nez v4, :cond_17

    .line 50
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_17
    const/16 v4, 0x1d

    if-lt v0, v4, :cond_18

    .line 51
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_6

    :cond_18
    move-object v5, v2

    :goto_6
    const v6, 0x1020046

    .line 52
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v1, :cond_19

    if-nez v5, :cond_19

    .line 53
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_19
    if-lt v0, v4, :cond_1a

    .line 54
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_7

    :cond_1a
    move-object v5, v2

    :goto_7
    const v6, 0x1020047

    .line 55
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v1, :cond_1b

    if-nez v5, :cond_1b

    .line 56
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1b
    if-lt v0, v4, :cond_1c

    .line 57
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_8

    :cond_1c
    move-object v5, v2

    :goto_8
    const v6, 0x1020048

    .line 58
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v1, :cond_1d

    if-nez v5, :cond_1d

    .line 59
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1d
    if-lt v0, v4, :cond_1e

    .line 60
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_9

    :cond_1e
    move-object v4, v2

    :goto_9
    const v5, 0x1020049

    .line 61
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_1f

    if-nez v4, :cond_1f

    .line 62
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1f
    if-lt v0, v3, :cond_20

    .line 63
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_a

    :cond_20
    move-object v3, v2

    :goto_a
    const v4, 0x102003c

    .line 64
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_21

    if-nez v3, :cond_21

    .line 65
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_21
    const/16 v3, 0x18

    if-lt v0, v3, :cond_22

    .line 66
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_b

    :cond_22
    move-object v3, v2

    :goto_b
    const v4, 0x102003d

    .line 67
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_23

    if-nez v3, :cond_23

    .line 68
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_23
    const/16 v3, 0x1a

    if-lt v0, v3, :cond_24

    .line 69
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_c

    :cond_24
    move-object v3, v2

    :goto_c
    const v4, 0x1020042

    .line 70
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_25

    if-nez v3, :cond_25

    .line 71
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_25
    const/16 v3, 0x1c

    if-lt v0, v3, :cond_26

    .line 72
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_d

    :cond_26
    move-object v4, v2

    :goto_d
    const v5, 0x1020044

    .line 73
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_27

    if-nez v4, :cond_27

    .line 74
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_27
    if-lt v0, v3, :cond_28

    .line 75
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_e

    :cond_28
    move-object v0, v2

    :goto_e
    const v3, 0x1020045

    .line 76
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_29

    if-nez v0, :cond_29

    .line 77
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_29
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Ln3$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lp3;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lp3;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/CharSequence;",
            "Lp3;",
            "Ljava/lang/Class<",
            "+",
            "Lp3$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Ln3$a;->b:I

    .line 4
    iput-object p4, p0, Ln3$a;->d:Lp3;

    .line 5
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_0

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Ln3$a;->a:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Ln3$a;->a:Ljava/lang/Object;

    .line 8
    :goto_0
    iput-object p5, p0, Ln3$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lp3;)Ln3$a;
    .locals 7

    .line 1
    new-instance v6, Ln3$a;

    iget v2, p0, Ln3$a;->b:I

    iget-object v5, p0, Ln3$a;->c:Ljava/lang/Class;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ln3$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lp3;Ljava/lang/Class;)V

    return-object v6
.end method

.method public b()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ln3$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    iget-object p2, p0, Ln3$a;->d:Lp3;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 2
    iget-object v1, p0, Ln3$a;->c:Ljava/lang/Class;

    if-eqz v1, :cond_1

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 5
    :goto_0
    iget-object v1, p0, Ln3$a;->c:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute command with argument class ViewCommandArgument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11yActionCompat"

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object p2, v0

    .line 8
    :cond_1
    iget-object v0, p0, Ln3$a;->d:Lp3;

    invoke-interface {v0, p1, p2}, Lp3;->a(Landroid/view/View;Lp3$a;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3$a;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Ln3$a;

    .line 3
    iget-object v1, p0, Ln3$a;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 4
    iget-object p1, p1, Ln3$a;->a:Ljava/lang/Object;

    if-eqz p1, :cond_3

    return v0

    .line 5
    :cond_2
    iget-object p1, p1, Ln3$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
