.class public final synthetic Ltp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Ltp;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ltp;

    invoke-direct {v0}, Ltp;-><init>()V

    sput-object v0, Ltp;->b:Ltp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Liq;

    check-cast p2, Liq;

    .line 1
    iget p1, p1, Lfq;->d:I

    iget p2, p2, Lfq;->d:I

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
