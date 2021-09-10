.class final synthetic Lyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls40;


# static fields
.field static final a:Ls40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyy;

    invoke-direct {v0}, Lyy;-><init>()V

    sput-object v0, Lyy;->a:Ls40;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr40;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
