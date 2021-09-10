.class final synthetic Lb10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final b:Lb10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb10;

    invoke-direct {v0}, Lb10;-><init>()V

    sput-object v0, Lb10;->b:Lb10;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lb10;->b:Lb10;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Li20$b;

    check-cast p2, Li20$b;

    .line 1
    invoke-virtual {p1}, Li20$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Li20$b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
