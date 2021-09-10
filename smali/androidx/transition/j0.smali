.class public abstract Landroidx/transition/j0;
.super Landroidx/transition/u;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibilityPropagation:visibility"

    const-string v1, "android:visibilityPropagation:center"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/j0;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/u;-><init>()V

    return-void
.end method

.method private static c(Landroidx/transition/w;I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p0, p0, Landroidx/transition/w;->a:Ljava/util/Map;

    const-string v1, "android:visibilityPropagation:center"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    return v0

    .line 2
    :cond_1
    aget p0, p0, p1

    return p0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/j0;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroidx/transition/w;)I
    .locals 2

    const/16 v0, 0x8

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p1, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    const-string v1, "android:visibilityPropagation:visibility"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public e(Landroidx/transition/w;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroidx/transition/j0;->c(Landroidx/transition/w;I)I

    move-result p1

    return p1
.end method

.method public f(Landroidx/transition/w;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Landroidx/transition/j0;->c(Landroidx/transition/w;I)I

    move-result p1

    return p1
.end method
