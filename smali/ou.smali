.class final synthetic Lou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# instance fields
.field private final a:Lcv;

.field private final b:Ljava/util/List;

.field private final c:Lit;


# direct methods
.method private constructor <init>(Lcv;Ljava/util/List;Lit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lou;->a:Lcv;

    iput-object p2, p0, Lou;->b:Ljava/util/List;

    iput-object p3, p0, Lou;->c:Lit;

    return-void
.end method

.method public static a(Lcv;Ljava/util/List;Lit;)Lcv$b;
    .locals 1

    new-instance v0, Lou;

    invoke-direct {v0, p0, p1, p2}, Lou;-><init>(Lcv;Ljava/util/List;Lit;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lou;->a:Lcv;

    iget-object v1, p0, Lou;->b:Ljava/util/List;

    iget-object v2, p0, Lou;->c:Lit;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lcv;->i0(Lcv;Ljava/util/List;Lit;Landroid/database/Cursor;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
