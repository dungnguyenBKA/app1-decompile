.class public final synthetic Lwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lwp;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lwp;

    invoke-direct {v0}, Lwp;-><init>()V

    sput-object v0, Lwp;->b:Lwp;

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

    check-cast p1, Lfq;

    check-cast p2, Lfq;

    .line 1
    iget p1, p1, Lfq;->d:I

    iget p2, p2, Lfq;->d:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
